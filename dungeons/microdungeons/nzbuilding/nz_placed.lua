function init()
    if not storage.state then
        storage.state = true
        world.placeDungeon("nzbuilding", entity.position(), "65532")
        object.smash(true)
    end
end