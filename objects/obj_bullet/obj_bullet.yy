{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_bullet",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_enemy_normal","path":"objects/obj_enemy_normal/obj_enemy_normal.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_enemy_fast","path":"objects/obj_enemy_fast/obj_enemy_fast.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_enemy_tanky","path":"objects/obj_enemy_tanky/obj_enemy_tanky.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"damage","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"20","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"target","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"obj_enemy","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_bullet",
    "path": "sprites/spr_bullet/spr_bullet.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}