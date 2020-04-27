import javafx.application.Application
import javafx.application.Platform
import javafx.collections.FXCollections
import javafx.geometry.HPos
import javafx.geometry.Insets
import javafx.geometry.Pos
import javafx.scene.Scene
import javafx.scene.control.*
import javafx.scene.layout.*
import javafx.scene.text.Font
import javafx.scene.text.FontWeight
import javafx.stage.Stage
import javafx.stage.Window
import javafx.event.ActionEvent
import javafx.event.EventHandler

class Testing extends Application {
	override void start(Stage primaryStage) throws Exception {
		primaryStage.setTitle("COVID -19 Tracker ")
		var StackPane root = new StackPane()
		// Create the registration form grid pane
		var GridPane gridPane = createPane()
		// Add UI controls to the registration form grid pane
		addUIControls(gridPane)
		var BorderPane bp = new BorderPane()
		bp.setTop(new Label("What the hell bruhhh"))
		var AnchorPane ac = new AnchorPane()
		var HBox hb = new HBox()
		var Button bt = new Button("CORONA")
		var Button bt2 = new Button("VIRUS")
		hb.getChildren().addAll(bt, bt2)
		hb.setSpacing(30)
		ac.getChildren().addAll(hb)
		AnchorPane.setRightAnchor(hb, 250d)
		AnchorPane.setTopAnchor(hb, 20d)
		// Create a scene with registration form grid pane as the root node
		root.getChildren().addAll(bp, gridPane)
		var Scene scene = new Scene(root, 1000, 500)
		// Set the scene in primary stage
		primaryStage.setScene(scene)
		primaryStage.show()
	}

	def private GridPane createPane() {
		// Instantiate a new Grid Pane
		var GridPane gridPane = new GridPane()
		// Position the pane at the center of the screen, both vertically and horizontally
		gridPane.setAlignment(Pos.CENTER)
		// Set a padding of 20px on each side
		gridPane.setPadding(new Insets(40, 40, 40, 40))
		// gridPane.setMinSize(40,200);
		// Set the horizontal gap between columns
		// gridPane.setHgap(10);
		// Set the vertical gap between rows
		// gridPane.setVgap(10);
		return gridPane
	}

	def private void addUIControls(GridPane gridPane) {
		var Button btn1 = new Button("Say Wassup")
		btn1.setOnAction([ActionEvent arg0|System.out.println("Nigga")])
		var Button btn2 = new Button("Say tupa")
		btn2.setOnAction([ e |
			{
				System.out.println("puta")
			}
		])
		gridPane.add(btn1, 0, 0)
		gridPane.add(btn2, 0, 1)
		var MenuBar menu = new MenuBar()
		var Menu filemenu = new Menu("Nibba")
		var MenuItem item = new MenuItem("Whadday think")
		var MenuItem item1 = new MenuItem("Damn bruh")
		var MenuItem item2 = new MenuItem("Exit bitch")
		var CheckMenuItem check1 = new CheckMenuItem("U know it")
		check1.setSelected(true)
		item2.setOnAction([e|Platform.exit()])
		filemenu.getItems().addAll(item, item1, check1, new SeparatorMenuItem(), item2)
		menu.getMenus().add(filemenu)
		gridPane.add(menu, 1, 0)
	}

	def static void main(String[] args) {
		launch(args)
	}
}
