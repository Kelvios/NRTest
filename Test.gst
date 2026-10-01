<?xml version='1.0' encoding='utf-8'?>
<gameSystem xmlns="http://www.battlescribe.net/schema/gameSystemSchema" id="sys-d58b-f1b4-607c-9c48" name="Infamy Infamy" revision="10" battleScribeVersion="2.03" type="gameSystem" authorName="Kelvin">
  <costTypes>
    <costType id="e89e-26b3-ba84-d897" name="Points" defaultCostLimit="-1" hidden="false" />
    <costType id="7c9a-b7c3-373d-72a6" name="Support" defaultCostLimit="-1" hidden="false" />
  </costTypes>
  <profileTypes>
    <profileType id="8ffd-aeee-ace4-24ad" name="Group">
      <characteristicTypes>
        <characteristicType id="8399-5229-8ab6-30be" name="Type" />
        <characteristicType id="1e86-00d5-78b8-cebe" name="Strength" />
        <characteristicType id="1ffe-0648-62ea-d789" name="Armour" />
        <characteristicType id="6c11-dcad-c329-860b" name="Weapons" />
        <characteristicType id="7e26-4e3f-43fb-234a" name="Aggressive Attack" />
        <characteristicType id="33bf-1756-6775-d9ed" name="Step Out" />
        <characteristicType id="462f-1611-3539-7732" name="Characteristics" />
      </characteristicTypes>
    </profileType>
    <profileType id="30f5-3a32-f497-de27" name="Leader">
      <characteristicTypes>
        <characteristicType id="0249-d186-45d4-3a71" name="Status" />
        <characteristicType id="d79a-826f-2e0d-b47a" name="Command Initiatives" />
        <characteristicType id="1bee-750e-84df-7d3f" name="Command Range (in)" />
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="d617-67cc-c0b4-4e6b" name="Warlord" hidden="false" />
    <categoryEntry id="885b-7415-6d98-dcdf" name="Leaders" hidden="false" />
    <categoryEntry id="46c4-e0cf-6392-bede" name="Foot Groups" hidden="false" />
    <categoryEntry id="59ac-b001-7034-b837" name="Skirmisher Groups" hidden="false" />
    <categoryEntry id="670f-fc13-6b38-62d2" name="Mounted Groups" hidden="false" />
    <categoryEntry id="204f-52e6-bf92-627a" name="War Engines" hidden="false" />
    <categoryEntry id="593d-f6c4-10ed-66df" name="Support" hidden="false" />
  </categoryEntries>
  <forceEntries>
    <forceEntry id="522e-89c1-12a7-344a" name="Army" hidden="false">
      <categoryLinks>
        <categoryLink id="951e-9f40-e101-009c" name="Warlord" hidden="false" targetId="d617-67cc-c0b4-4e6b" type="category">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="4543-04c6-1a9b-8459" />
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="debe-8650-f578-a72d" />
          </constraints>
        </categoryLink>
        <categoryLink id="f026-5353-c750-e02e" name="Leaders" hidden="false" targetId="885b-7415-6d98-dcdf" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="43cc-8cf4-86e5-5fdf" />
          </constraints>
        </categoryLink>
        <categoryLink id="f1aa-e7af-d0f0-fb81" name="Foot Groups" hidden="false" targetId="46c4-e0cf-6392-bede" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="5ed4-fd62-da55-be58" />
          </constraints>
        </categoryLink>
        <categoryLink id="7aa3-a86f-125f-8334" name="Skirmisher Groups" hidden="false" targetId="59ac-b001-7034-b837" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="2d8d-ba4a-a5a7-46b8" />
          </constraints>
        </categoryLink>
        <categoryLink id="c867-00e5-0bef-b5d0" name="Mounted Groups" hidden="false" targetId="670f-fc13-6b38-62d2" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="2414-8004-d11d-b17b" />
          </constraints>
        </categoryLink>
        <categoryLink id="995e-02b3-1e86-6eaa" name="War Engines" hidden="false" targetId="204f-52e6-bf92-627a" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="04d4-0d21-a5c6-2ed3" />
          </constraints>
        </categoryLink>
        <categoryLink id="4973-1d1a-73bd-aaf6" name="Support" hidden="false" targetId="593d-f6c4-10ed-66df" type="category">
          <constraints>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="a5c7-9cc5-b91c-db5b" />
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
</gameSystem>
