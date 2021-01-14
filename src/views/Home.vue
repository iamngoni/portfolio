<template>
  <div class="container">
    <div id="name-container">
      <img id="avatar" src="./../assets/images/av.png" alt="avatar" />
      <h1>Ngonidzashe Mangudya</h1>
    </div>
    <div class="title-desc-container">
      <a id="github" href="https://github.com/iamngoni" target="_blank" rel="noopener noreferrer"
        ><img class="title-font" src="./../assets/images/github.svg" />Developer</a
      >
      <span>/</span>
      <a id="blog" href="https://twitter.com/iamngoni_" target="_blank" rel="noopener noreferrer"
        ><img class="title-font" src="./../assets/images/twitter.svg" />Twimbo</a
      >
    </div>
    <div class="article">
      <h2>WHO AM I</h2>
      <p>
        I'm <i>Ngonidzashe Mangudya</i> a Software Engineering student by day and Developer by night. 
      </p>

      <h2>Academics</h2>
      <ul>
        <li>
          🙇 Undergraduate student at HIT (🇿🇼
          <a href="https://www.hit.ac.zw/" target="_blank" rel="noopener noreferrer">Harare Institute of Technology</a>), 08/2018
          entry,
          <i
            ><a
              href="https://www.hit.ac.zw/information-science-and-technology-software-engineering.html"
              target="_blank"
              rel="noopener noreferrer"
              >B.Tech Hon. in SE</a
            ></i
          >.
        </li>
        
        <li>🔭 <b>Fields of interest:</b> IoT</li>
      </ul>

      <h2>Devices</h2>
      <ul>
        <li>⚫ ThinkPad T550 5th Gen</li>
        <li>🔵 iPhone SE</li>
      </ul>

      <h2>Contacts</h2>
      <ul>
        <li>
          <b>Email：</b>
          <a href="mailto:imngonii@gmail.com">imngonii@gmail.com</a><i> (Preferred)</i>
        </li>
      </ul>
    </div>
  </div>
</template>

<style lang="css" scoped>
#name-container {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
}

#avatar {
  width: 42px;
  height: 42px;
  border-radius: 50%;
  margin-right: 12px;
}

#copyright:hover {
  border: none;
}

.title-font {
  width: 16px;
  height: 16px;
  margin-right: 4px;
}

.title-desc-container {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  margin: 8px 0;
}

.title-desc-container a {
  display: flex;
  align-items: center;
}

.title-desc-container span {
  margin: 0px 4px;
}

.title-desc-container #github {
  color: #24292e;
}

.title-desc-container #sspai {
  color: #ca2c2a;
}

.title-desc-container #blog {
  color: #0070f3;
}
</style>
