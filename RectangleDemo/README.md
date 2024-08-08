RECT_TEST_1.LS: Program that takes 2 points from the user and creates a rectagular prism through the use of the additive mig welding feature. Calls on `REF_TEST.LS` for backend register updates. 

Changes Needed:

  - Add welding instructions (basic template for laser welding)
  - Test different speeds to achieve a good weld 
  - Adjust R[60:DELTA Z] in register menu for spacing between layers in the Z-direction
  - Adjust R[51:X STEP] in register menu for spacing between wire welded onto plate in the x direction

Rules: 

  - Second point MUST be to the left (negative y) from the first point
  - Surface must be flat (or close to)

 Customization:
  - Set R[58:LAYERS] to the number of layers desired (starting from 1 and inclusive end)
  - Adjust R[50:ClearenceHt] in `REFTEST.LS` to change clearence height
