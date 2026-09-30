<?xml version='1.0' encoding='utf-8'?>
<gameSystem xmlns="http://www.battlescribe.net/schema/gameSystemSchema" id="sys-4d10-ed81-ab80-2530" name="Test" revision="2" battleScribeVersion="2.03" type="gameSystem" authorName="Your Name">
  <costTypes>
    <costType id="42f6-5fc8-5ad6-ffee" name="Honour" defaultCostLimit="-1" hidden="false" />
  </costTypes>
  <categoryEntries>
    <categoryEntry id="1c57-bce3-e57d-1bd8" name="Leader" hidden="false" />
    <categoryEntry id="2da6-e5b9-c0db-2061" name="Warriors" hidden="false" />
    <categoryEntry id="faa9-9aa1-c626-49ce" name="Allies" hidden="false" />
    <categoryEntry id="723b-5cbb-29f1-961e" name="Scouts" hidden="false" />
  </categoryEntries>
  <forceEntries>
    <forceEntry id="d271-e1a9-b228-cd86" name="Warband" hidden="false">
      <categoryLinks>
        <categoryLink id="e64e-8370-4f70-dab2" name="Leader" hidden="false" targetId="1c57-bce3-e57d-1bd8" type="category">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="752d-caeb-3191-5bf1" />
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="c51f-5d8a-721c-6a3c" />
          </constraints>
        </categoryLink>
        <categoryLink id="eb6f-f6bc-5dc4-f84b" name="Warriors" hidden="false" targetId="2da6-e5b9-c0db-2061" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="38d6-1e82-36f8-4278" />
          </constraints>
        </categoryLink>
        <categoryLink id="e2b1-048d-51d9-76ca" name="Allies" hidden="false" targetId="faa9-9aa1-c626-49ce" type="category">
          <constraints>
            <constraint type="max" value="50" field="42f6-5fc8-5ad6-ffee" scope="roster" shared="true" id="158c-7ed0-ccea-47e4" percentValue="true" />
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="2678-936f-0ef0-56ee" />
          </constraints>
        </categoryLink>
        <categoryLink id="bda6-d2d4-93a2-01fd" name="Scouts" hidden="false" targetId="723b-5cbb-29f1-961e" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="8cff-d0c1-211f-23d8" />
            <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="11f3-6d98-83ee-ba88" />
          </constraints>
          <modifiers>
            <modifier type="increment" field="11f3-6d98-83ee-ba88" value="1">
              <repeats>
                <repeat field="selections" scope="force" value="2" shared="true" includeChildSelections="false" includeChildForces="false" childId="2da6-e5b9-c0db-2061" repeats="1" roundUp="true" />
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
</gameSystem>
