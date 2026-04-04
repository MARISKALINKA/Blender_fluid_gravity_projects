# HPC instrukcijas
Šajā lapā varat iepazīties ar HPC instrukcijām
- kā pieslegties 
- ka uzlikt uzdevumu 
- ka izsekot uzdevumu 
- uzdevuma ipzildes rezultāta lejuplāde

Šīs insstrukcijas izpildei ir jābut saņemtam ielūgumam no RTU HPC centra

## Pieslēgšanās HPC 
ir iespējama tikai ja no daministratora ir saņemts ielūgums. Tajā brīdī tiek izveidota vide uz HPC resursiem

Ja ielūgums ir saņemts un akceptēts, tad dodas uz https://nohap.hpc-net.lv/login/

### 1.Izvēlas Sign in with RTU HPC
![Login](images/file-69a748ebaa58d.png)


### 2.  Izvēlamies  MyAccessID vai autorizāciju ar ID karti
![Autorizacija](images/file-69a749674b01c.png)
![Autorizacija](images/file-69a749d1d05d7.png)


### 3.Akceptējam ielūgumu (ja iet pirmo reizi), ja atkārtoti tad nav nepieciešams
![Akcepts](images/file-69a74ab680b3c.png)
file-69a74ab680b3c.png

### 4. Izvēlamies no sānu izvēles Resources/All Resources
![Resursi](images/file-69a74ba7619ef.png)

### 5.Izvelamies HPC alokācija H20. Tur tiks iegūts lietotājs ID uz HPC.
![Alokacija](images/file-69a74c29442d7.png)
![Alokacija](images/file-69a74cf55bff8.png)

### 6.Izvēlamies resursu
![Rezursu izvele](images/file-69a74d7d99edc.png)

### 7. Nokļustam savā darba vidē 
- kur var ielikt uzdevumu, startēt uzdevumu un sekot līdzi uzdevuma izpildei un saņemt rezultātu
![Darba vide](images/file-69a74e4c2de13.png)


## Uzdevuma uzlikšana uz HPC

### 1. Failu un scriptu augsupielādes vide

Izvelamies Files/Home Directory

Vide kur tiek augšupielādeti darba fauli un izpildes komandas faili

Vieta kur ari glabājas rezultāts
![Vieta](images/file-69a7cfce5a3e9.png)


### 2. Darba uzsākšana Blender simulacijai un Render

#### 2.1.Failu augšupielāde

-blender failu   nosaukums.blend - jābut visam sapakotam viena failā

- bake.py

- render.py 

- run_blender.sh 
![Vieta](images/file-69a7d171b9cd5.JPG)

#### 2.2. Parametru iestatīšana bake.py
![Bake](images/file-69a7d291172bb.png)
![Bake](images/file-69a7d29b40c94.png)


#### 2.3. Parametru iestatīšana izpildkomandas failā run_blender.sh

![Parametri](images/file-69a7d39fcdbf7.JPG)
![Parametri](images/file-69a7d3a8c96e2.png)


#### 2.2. Parametru iestatīšana render.py
- janorada simulacijas vides nosaukums Blender failā
![Render](images/file-69c132229d9d2.png)
![Render](images/file-69c131b7725b3.png)

### Uzdevuma izpilde 
#### 1.Atver Cluster darba vidi 
- izvelas Clusters /RUDENS Shell Acces

![Cluste](images/file-69a7d82294d94.png)
![Cluster](images/file-69a7d82f64504.JPG)
file-69a7d82294d94.png
file-69a7d82f64504.JPG
#### 2. Dod komandu izpildit uzdevumu 
-ierakstam komandrindu 

qsub run_blender.sh

![SUBMIT](images/file-69a7d89d4d8f1.JPG)
![SUBMIT](images/file-69a7d8b029463.JPG)

### Uzdevuma izsekošana

#### 1. Vienkāršās komandas
##### 1.1. Open OnDemand Dashboard - redzam ka izveidojas papildus mapes

![SUBMIT](images/file-69a7d927a5504.png)

###### 1.2. Ar komandrindu 
qstat

qstat-n

![SUBMIT](images/ile-69a7d95a317cb.JPG)
![SUBMIT](images/file-69a7d96571ca3.JPG)

##### 1.3. Apskatīt savu nodi
![SUBMIT](images/file-69a7d9cd59476.png)

#### 2. Citas komandas
##### 2.1. Neesam vienigie - redzam kur ir darbs
showq
![SUBMIT](images/file-69a7da62ae1a3.JPG)

##### 2.2. Redzi sevi un seko lidzi
ssh wn71

nvidia-smi   -paradas kad sak render darit

nvidia-smi -l  -paradas kad sak render darit

top   - redz kura procesa ir

top u (lietotaja id)  - redz kura procesa ir
![SUBMIT](images/file-69a7dc0a8bcd2.JPG)
![SUBMIT](images/file-69a7dc12f0d98.JPG)
![SUBMIT](images/file-69a7dc212bb3c.JPG)
![SUBMIT](images/file-69a7dc2be8644.JPG)
