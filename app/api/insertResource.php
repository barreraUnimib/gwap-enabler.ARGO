<?php
/*
 * (C) Copyright 2017 CEFRIEL (http://www.cefriel.com/).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Contributors:
 *     Andrea Fiano, Gloria Re Calegari, Irene Celino.
 */
include 'db_connect.php';
include 'functions.php';
include 'jwt.php';

if(!isAuthorized()) {
    return;
}

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$resource = $request->analogy;
$idCategory = $request->idCategory;
$topic0 = $request->topic0;
$topic1 = $request->topic1;
$topic2 = $request->topic2;
$topic3 = $request->topic3;
$topic4 = $request->topic4;

echo "document.write("Qui ci siamo arrivati");";
    //INSERT resource
    $insert_row = $mysqli->query("INSERT INTO resource (idCategory, label, url) VALUES ($idCategory,'$resource', 'analogy/resource/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryRes = 	"(
                    SELECT idResource
                    FROM resource
                    WHERE label = '$resource'
                    )						
                    ";
    
    $resultResource = $mysqli->query($queryRes) or die($mysqli->error.__LINE__);
    $rowRes=mysqli_fetch_array($resultResource,MYSQLI_NUM);
    $idResource = $rowRes[0];

    //INSERT topic0
    $insert_row = $mysqli->query("INSERT INTO topic (label, value, url) VALUES ('$topic0', 'NUOVO', 'analogy/topic/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryTopic0 = 	"(
                            SELECT idTopic
                            FROM topic
                            WHERE label = '$topic0'
                            )						
                            ";

    $resultTopic0 = $mysqli->query($queryTopic0) or die($mysqli->error.__LINE__);
    $rowTop=mysqli_fetch_array($resultTopic0,MYSQLI_NUM);
    $idTopic0 = $rowTop[0];
    //INSERT resource_has_topic0
    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, $idTopic0, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    //INSERT topic1
    $insert_row = $mysqli->query("INSERT INTO topic (label, value, url) VALUES ('$topic1', 'NUOVO', 'analogy/topic/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryTopic1 = 	"(
                                SELECT idTopic
                                FROM topic
                                WHERE label = '$topic1'
                                )						
                                ";

    $resultTopic1 = $mysqli->query($queryTopic1) or die($mysqli->error.__LINE__);
    $rowTop=mysqli_fetch_array($resultTopic1,MYSQLI_NUM);
    $idTopic1 = $rowTop[0];
    //INSERT resource_has_topic0
    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, $idTopic1, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    //INSERT topic2
    $insert_row = $mysqli->query("INSERT INTO topic (label, value, url) VALUES ('$topic2', 'NUOVO', 'analogy/topic/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryTopic2 = 	"(
                                    SELECT idTopic
                                    FROM topic
                                    WHERE label = '$topic2'
                                    )						
                                    ";

    $resultTopic2 = $mysqli->query($queryTopic2) or die($mysqli->error.__LINE__);
    $rowTop=mysqli_fetch_array($resultTopic2,MYSQLI_NUM);
    $idTopic2 = $rowTop[0];
    //INSERT resource_has_topic0
    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, $idTopic2, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    //INSERT topic3
    $insert_row = $mysqli->query("INSERT INTO topic (label, value, url) VALUES ('$topic3', 'NUOVO', 'analogy/topic/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryTopic3 = 	"(
                                        SELECT idTopic
                                        FROM topic
                                        WHERE label = '$topic3'
                                        )						
                                        ";

    $resultTopic3 = $mysqli->query($queryTopic3) or die($mysqli->error.__LINE__);
    $rowTop=mysqli_fetch_array($resultTopic3,MYSQLI_NUM);
    $idTopic3 = $rowTop[0];
    //INSERT resource_has_topic0
    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, $idTopic3, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    //INSERT topic4
    $insert_row = $mysqli->query("INSERT INTO topic (label, value, url) VALUES ('$topic4', 'NUOVO', 'analogy/topic/(nome).png')");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $queryTopic4 = 	"(
                                        SELECT idTopic
                                        FROM topic
                                        WHERE label = '$topic4'
                                        )						
                                        ";

    $resultTopic4 = $mysqli->query($queryTopic4) or die($mysqli->error.__LINE__);
    $rowTop=mysqli_fetch_array($resultTopic4,MYSQLI_NUM);
    $idTopic4 = $rowTop[0];
    //INSERT resource_has_topic0
    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, $idTopic4, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

    $insert_row = $mysqli->query("INSERT INTO resource_has_topic (idResource, idTopic, score) VALUES ($idResource, 6, 0)");

    if($insert_row){
        //print $insert_row;
    }else{
        die('Error : ('. $mysqli->errno .') '. $mysqli->error);
    }

/* close connection */
$mysqli->close();
?>
