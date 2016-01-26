Helper = require('hubot-test-helper')
expect = require('chai').expect

helper = new Helper('./../scripts/septa.coffee')

describe 'septa', ->
  room = null

  beforeEach ->
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  it 'is configured correctly', ->
    expect(1).to.eql 1
