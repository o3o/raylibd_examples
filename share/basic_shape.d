import std.stdio;
import raylib;

void main(string[] args) {

   // Initialization
   enum SCREEN_WIDTH = 800;
   enum SCREEN_HEIGHT = 450;

   InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "raylib [core] example - basic window");

   SetTargetFPS(60); // Set our game to run at 60 frames-per-second


   // Main game loop
   while (!WindowShouldClose()) {   // Detect window close button or ESC key
      // Update
      //----------------------------------------------------------------------------------
      // TODO: Update your variables here
      //----------------------------------------------------------------------------------

      // Draw
      //----------------------------------------------------------------------------------
      BeginDrawing();

      ClearBackground(RAYWHITE);

      DrawText("some basic shapes available on raylib", 20, 20, 20, DARKGRAY);

      DrawCircle(SCREEN_WIDTH/4, 120, 35, DARKBLUE);

      DrawRectangle(SCREEN_WIDTH/4*2 - 60, 100, 120, 60, RED);
      DrawRectangleLines(SCREEN_WIDTH/4*2 - 40, 320, 80, 60, ORANGE);  // NOTE: Uses QUADS internally, not lines
      DrawRectangleGradientH(SCREEN_WIDTH/4*2 - 90, 170, 180, 130, MAROON, GOLD);

      DrawTriangle(Vector2(SCREEN_WIDTH/4*3, 80),
            Vector2(SCREEN_WIDTH/4*3 - 60, 150),
            Vector2(SCREEN_WIDTH/4*3 + 60, 150), VIOLET);

      DrawPoly(Vector2(SCREEN_WIDTH/4*3, 320), 6, 80, 0, BROWN);

      DrawCircleGradient(SCREEN_WIDTH/4, 220, 60, GREEN, SKYBLUE);

      // NOTE: We draw all LINES based shapes together to optimize internal drawing,
      // this way, all LINES are rendered in a single draw pass
      DrawLine(18, 42, SCREEN_WIDTH - 18, 42, BLACK);
      DrawCircleLines(SCREEN_WIDTH/4, 340, 80, DARKBLUE);
      DrawTriangleLines(
            Vector2(SCREEN_WIDTH/4*3, 160),
            Vector2(SCREEN_WIDTH/4*3 - 20, 230),
            Vector2(SCREEN_WIDTH/4*3 + 20, 230), DARKBLUE);
      EndDrawing();
   }
   CloseWindow();        // Close window and OpenGL context
}
