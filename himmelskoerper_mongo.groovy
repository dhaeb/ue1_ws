#!/usr/bin/env groovy

@Grapes( 
@Grab(group='org.mongodb', module='mongodb-driver', version='3.4.2') 
)
import com.mongodb.BasicDBObject;
import com.mongodb.BulkWriteOperation;
import com.mongodb.BulkWriteResult;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.ParallelScanOptions;
import com.mongodb.ServerAddress;

MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

DB db = mongoClient.getDB( "himmel" );

DBCollection coll = db.getCollection("himmelskoerper");

DBObject obj = (DBObject) com.mongodb.util.JSON.parse(new File("./himmelskoerper.json").text);
def list = [obj]
//save them into database:
coll.insert(list);
