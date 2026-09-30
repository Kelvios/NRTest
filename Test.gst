<?xml version='1.0' encoding='utf-8'?>
<gameSystem xmlns="http://www.battlescribe.net/schema/gameSystemSchema" id="sys-4d10-ed81-ab80-2530" name="Test" revision="3" battleScribeVersion="2.03" type="gameSystem" authorName="Your Name">
  <costTypes>
    <costType id="42f6-5fc8-5ad6-ffee" name="Honour" defaultCostLimit="-1" hidden="false" />
  </costTypes>
  <categoryEntries>
    <categoryEntry id="1c57-bce3-e57d-1bd8" name="Leader" hidden="false" />
    <categoryEntry id="b415-b76e-d0ec-b923" name="Fighters" hidden="false" />
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
        <categoryLink id="0944-0df9-39ff-72b2" name="Fighters" hidden="false" targetId="b415-b76e-d0ec-b923" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="89b7-5bf8-699c-d7ee" />
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
</gameSystem>
