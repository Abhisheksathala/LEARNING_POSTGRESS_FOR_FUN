const dotenv = require('dotenv');
dotenv.config();

// const {
//   createuserTable,
//   insertUser,
//   fetchAllUsers,
//   updateuser,
//   deleteInfo,
// } = require('./src/consepts/basic-queries.js');

// const {
//   getUsersWhere,
//   getSortedUsers,
//   pagenationatedUsers,
// } = require('./src/consepts/filtering-sorting.js');

const {createPostTable,insertNewPost} = require("./src/consepts/relationships.js")
const {getusersWithPosts,getalluserandtherposts} = require("./src/consepts/joins")

const {countpostsByUsers} = require("./src/consepts/aggregation.js")


// test basic queries

// async function testBasicQuries() {
//   try {
//     // await createuserTable();
//     // insert users
//     // await insertUser('sfjkl', 'ghk@gmail.com');
//     // await insertUser('dgjkl', 'jkgjkl@gmail.com');
//     //  await fetchAllUsers()
//     //   await updateuser("TIGER","sdfsdfsdf@gmail.com")
//     // await deleteInfo('TIGER')
//   } catch (error) {
//     console.log('Error', error);
//   }
// }

// async function testAllQUeries() {
//   await testBasicQuries();
// }
// testAllQUeries();

// async function testFilterandSortQueries() {
//   try {
//     // get users with a username whose username is with z
//     const Afilterusers = await getUsersWhere("username LIKE 'a%'");
//     // console.log('Filtered users:', Afilterusers);

//     // filtering the data asccending and decending
//     const sorted = await getSortedUsers('created_at', 'ASC');
//     //ASC nad DASC
//     // console.log(sorted);

//     const paginated = await pagenationatedUsers(2, 0);
//     // console.log("pagination",paginated);
//   } catch (error) {
//     console.log(error);
//   }
// }

// testFilterandSortQueries();


async function testrelationQuerys(){

  try {
// const postcreate = await createPostTable()
// console.log(postcreate)
// const insertpost = await insertNewPost("this is now post","hello bro",1)
// console.log("post inserted ",insertpost)

// const joins = await getusersWithPosts()
// const joins = await getalluserandtherposts()
// console.log("joins",joins)

  } catch (error) {
    console.log(error)
  }

}
// testrelationQuerys()


async function testagregateQuery(){
  try {
    const res =  await countpostsByUsers()
    console.log(res)
  } catch (error) {
    console.log(error)
  }
}
testagregateQuery()
