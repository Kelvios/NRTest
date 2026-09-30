<?xml version='1.0' encoding='utf-8'?>
<gameSystem xmlns="http://www.battlescribe.net/schema/gameSystemSchema" id="sys-4d10-ed81-ab80-2530" name="Test" revision="1" battleScribeVersion="2.03" type="gameSystem" authorName="Your Name">
  <costTypes>
    <costType id="42f6-5fc8-5ad6-ffee" name="Honour" defaultCostLimit="-1" hidden="false" />
  </costTypes>
  <categoryEntries>
    <categoryEntry id="1c57-bce3-e57d-1bd8" name="Leader" hidden="false" />
    <categoryEntry id="c808-fd4d-9d0d-8c35" name="Heroes" hidden="false" />
    <categoryEntry id="2da6-e5b9-c0db-2061" name="Warriors" hidden="false" />
    <categoryEntry id="b4dd-8897-c416-fe56" name="Marksmen" hidden="false" />
    <categoryEntry id="13ad-bfb7-1c73-0b79" name="Elites" hidden="false" />
    <categoryEntry id="e3b7-3def-2bf5-2577" name="Guards" hidden="false" />
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
        <categoryLink id="2ead-200b-433a-8d04" name="Heroes" hidden="false" targetId="c808-fd4d-9d0d-8c35" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="edcf-c601-dccd-850a" />
          </constraints>
        </categoryLink>
        <categoryLink id="eb6f-f6bc-5dc4-f84b" name="Warriors" hidden="false" targetId="2da6-e5b9-c0db-2061" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="38d6-1e82-36f8-4278" />
          </constraints>
        </categoryLink>
        <categoryLink id="00d2-c230-95dc-82c5" name="Marksmen" hidden="false" targetId="b4dd-8897-c416-fe56" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="ca82-670b-e79c-42ba" />
          </constraints>
        </categoryLink>
        <categoryLink id="16b3-a8ce-bf6f-cf45" name="Elites" hidden="false" targetId="13ad-bfb7-1c73-0b79" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="f786-163c-26e3-ec73" />
            <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="d132-91eb-05eb-3157" />
          </constraints>
          <modifiers>
            <modifier type="increment" field="d132-91eb-05eb-3157" value="1">
              <repeats>
                <repeat field="selections" scope="force" value="2" shared="true" includeChildSelections="false" includeChildForces="false" childId="2da6-e5b9-c0db-2061" repeats="1" roundUp="false" />
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink id="c740-b0e1-3010-0f51" name="Guards" hidden="false" targetId="e3b7-3def-2bf5-2577" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="277f-4cf5-2302-a9c0" />
            <constraint type="max" value="0" field="selections" scope="parent" shared="true" id="ce10-c954-b644-520d" />
          </constraints>
          <modifiers>
            <modifier type="increment" field="ce10-c954-b644-520d" value="1">
              <repeats>
                <repeat field="selections" scope="force" value="1" shared="true" includeChildSelections="false" includeChildForces="false" childId="2da6-e5b9-c0db-2061" repeats="2" roundUp="false" />
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
</gameSystem>
