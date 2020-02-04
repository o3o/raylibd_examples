import std.stdio;
import raylib;

void main(string[] args) {
   // Initialization
   enum SCREEN_WIDTH = 800;
   enum SCREEN_HEIGHT = 450;

   InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "raylib [core] example - basic window");

   SetTargetFPS(60); // Set our game to run at 60 frames-per-second

   // Main game loop
   while (!WindowShouldClose()) {
      // Detect window close button or ESC key
      // Update
      //----------------------------------------------------------------------------------
      // TODO: Update your variables here
      //----------------------------------------------------------------------------------

      // Draw
      BeginDrawing();
      ClearBackground(GOLD);
      DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);

      EndDrawing();
   }

   // De-Initialization
   CloseWindow(); // Close window and OpenGL context
}
