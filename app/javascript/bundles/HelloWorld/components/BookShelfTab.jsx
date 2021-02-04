import React from 'react';
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import 'react-tabs/style/react-tabs.css';

const BookShelfTab = (props) => {
  const books = []
  const len = Object.keys(props).length
  for (let i =0; i < len; i++) {
      books.push(props[i])
  }
//   const fil0 = books.filter((book) => {
//       return (book.status_id == 0)
//   })
//   console.log(fil0)
  
//   const ex = books.map((book) => {
//     const bookShowLink = "/books/" + book.id
//     return (
//       <div key={book} className="book-image">
//         <a href={bookShowLink}>
//           <img src={book.image_link} className="thumbnail-sm"/>
//         </a>
//       </div>
//     );
//   })
  return (
      <Tabs>
          <TabList>
              <Tab>登録した本</Tab>
              <Tab>読みたい本</Tab>
              <Tab>読んでいる本</Tab>
              <Tab>読み終わった本</Tab>
          </TabList>
            
          <TabPanel className="d-flex row">
            {books.map((book) => {
              if (book.status_id == 0) {
                const bookShowLink = "/books/" + book.id
                return (
                  <div key={book.id} className="book-image p-3 my-2 d-flex flex-column align-items-center col-lg-3 col-md-4 col-sm-6 col-6">
                    <a href={bookShowLink}>
                      <img src={book.image_link} className="thumbnail-sm shadow-sm"/>
                    </a>
                  </div>
                );
              };
            })}
          </TabPanel>
          <TabPanel className="d-flex row">
            {books.map((book) => {
              if (book.status_id == 1) {
                const bookShowLink = "/books/" + book.id
                return (
                  <div key={book.id} className="book-image p-3 my-2 d-flex flex-column align-items-center col-lg-3 col-md-4 col-sm-6 col-6">
                    <a href={bookShowLink}>
                      <img src={book.image_link} className="thumbnail-sm shadow-sm"/>
                    </a>
                  </div>
                );
              };
            })}
          </TabPanel>
          <TabPanel className="d-flex row">
            {books.map((book) => {
              if (book.status_id == 2) {
                const bookShowLink = "/books/" + book.id
                return (
                  <div key={book.id} className="book-image p-3 my-2 d-flex flex-column align-items-center col-lg-3 col-md-4 col-sm-6 col-6">
                    <a href={bookShowLink}>
                      <img src={book.image_link} className="thumbnail-sm shadow-sm"/>
                    </a>
                  </div>
                );
              };
            })}
          </TabPanel>
          <TabPanel className="d-flex row">
            {books.map((book) => {
              if (book.status_id == 3) {
                const bookShowLink = "/books/" + book.id
                return (
                  <div key={book.id} className="book-image p-3 my-2 d-flex flex-column align-items-center col-lg-3 col-md-4 col-sm-6 col-6">
                    <a href={bookShowLink}>
                      <img src={book.image_link} className="thumbnail-sm shadow-sm"/>
                    </a>
                  </div>
                );
              };
            })}
          </TabPanel>
          
      </Tabs>
  )
}

export default BookShelfTab;