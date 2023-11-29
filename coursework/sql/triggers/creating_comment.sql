CREATE OR REPLACE FUNCTION create_reaction_set_for_comment()
RETURNS TRIGGER
AS
$$
    DECLARE
    r_id INT;
    BEGIN
        IF (NEW.reactions_id == NULL) THEN
            r_id := INSERT INTO Reaction_sets VALUES() RETURNING r_set_id;
            UPDATE Comments
                SET reactions_id = r_id
                where comment_id = NEW.comment_id;
        END IF;
    RETURN NEW;
    END;
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER after_inserting_comment
    AFTER INSERT ON Comments
    FOR EACH ROW EXECUTE PROCEDURE create_reaction_set_for_comment();