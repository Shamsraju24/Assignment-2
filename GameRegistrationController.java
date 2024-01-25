import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class GameRegistrationController {

    @FXML
    private TextField gameNameField;

    @FXML
    private TextField gameTypeField;

    @FXML
    private TextField boardNumberField;

    @FXML
    private TextField maxPlayersField;

    @FXML
    private void registerGame() {
        // Implement JDBC code to insert game details into the database
        // Use values from the text fields (gameNameField, gameTypeField, etc.)
    }
}
