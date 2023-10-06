
"use strict";

let GetAnnotationsData = require('./GetAnnotationsData.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let ListWorlds = require('./ListWorlds.js')
let DeleteMap = require('./DeleteMap.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let SetRelationship = require('./SetRelationship.js')
let YAMLImport = require('./YAMLImport.js')
let GetAnnotations = require('./GetAnnotations.js')
let YAMLExport = require('./YAMLExport.js')
let PublishMap = require('./PublishMap.js')
let SetKeyword = require('./SetKeyword.js')
let SaveMap = require('./SaveMap.js')
let ListMaps = require('./ListMaps.js')
let RenameMap = require('./RenameMap.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let ResetDatabase = require('./ResetDatabase.js')

module.exports = {
  GetAnnotationsData: GetAnnotationsData,
  EditAnnotationsData: EditAnnotationsData,
  ListWorlds: ListWorlds,
  DeleteMap: DeleteMap,
  SaveAnnotationsData: SaveAnnotationsData,
  PubAnnotationsData: PubAnnotationsData,
  SetRelationship: SetRelationship,
  YAMLImport: YAMLImport,
  GetAnnotations: GetAnnotations,
  YAMLExport: YAMLExport,
  PublishMap: PublishMap,
  SetKeyword: SetKeyword,
  SaveMap: SaveMap,
  ListMaps: ListMaps,
  RenameMap: RenameMap,
  DeleteAnnotations: DeleteAnnotations,
  ResetDatabase: ResetDatabase,
};
