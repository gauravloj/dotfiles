describe("stackmap", function()
  it("can be required", function()
    local stackmap = require "mihawk.stackmap"
    assert.is_table(stackmap)
  end)
end)
