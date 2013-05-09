##VicRail

###About
Hendra virus was discovered in September 1994 when it caused the deaths of thirteen horses, and a trainer, Victory ('Vic') Rail, at a training complex in Hendra, a suburb of Brisbane in Queensland, Australia.

Rail and a stable hand were involved in nursing the index case, and both fell ill with an influenza-like illness within one week of the first horse’s death. The stable hand recovered while Mr Rail died of respiratory and renal failure.

The script, named in his honor, is used to easily send the cryptographic checksum of a suspected compromised file to Virus Total for comparison with other reported cases of known malware.

###Requirements

The following Ruby Gems are required:
<ul>
<li>ruby</li>
<li>json</li>
<li>rest-client</li>
</ul>

You also require a free public api key from <a href="http://www.virustotal.com" target="_blank">virustotal.com</a> that will allow you to compare the hash values of your suspect files against the Virus Total database.

###Usage

<pre><code># <b>ruby vicrail.rb /path/to/file1 /path/to/file2 /path/to/file3 ... /path/to/file234</b>

e.g.

# <b>ruby vicrail.rb /usr/sbin/httpd /usr/sbin/sshd</b>
/usr/sbin/httpd
6ac38797cab8059c405599eff135506cfe166edf158c225afc06fd910833f0a5: Scanner: - Result: The requested resource is not among the finished, queued or pending scans

/usr/sbin/sshd
b9aaa4306e521928d8f5812b0e0df26325bab42cfe670bfa2e64a33141ca0aa7: Scanner: - Result: The requested resource is not among the finished, queued or pending scans
</code></pre>

If the hash of the file is already in the database, you'll likely see something similar to:
<pre><code>
ahay$ <b>ruby vicrail.rb /Users/ahay/Downloads/apache2</b> 
/Users/ahay/Downloads/apache2
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: TotalDefense Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: MicroWorld-eScan Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: nProtect Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: CAT-QuickHeal Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: McAfee Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Malwarebytes Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: K7AntiVirus Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: K7GW Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: TheHacker Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: NANO-Antivirus Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: F-Prot Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Symantec Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Norman Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: ByteHero Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: TrendMicro-HouseCall Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Avast Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: eSafe Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: ClamAV Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Kaspersky Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: BitDefender Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Agnitum Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: ViRobot Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Sophos Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Comodo Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: F-Secure Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: DrWeb Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: VIPRE Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: AntiVir Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: TrendMicro Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: McAfee-GW-Edition Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Emsisoft Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Jiangmin Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Antiy-AVL Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Kingsoft Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Microsoft Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: SUPERAntiSpyware Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: GData Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Commtouch Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: AhnLab-V3 Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: VBA32 Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: PCTools Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: ESET-NOD32 Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Ikarus Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Fortinet Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: AVG Result: Nothing detected
e8d08e7a00b0b3d635f8bb75a542a9daa873008d99f2aa377ec301dd48a71e1f: Scanner: Panda Result: Nothing detected
</pre></code>

###Thanks

I'd like to thank <a href="http://www.arxopia.com/about/" target="new">Arxopia</a> for creating <a href="http://www.arxopia.com/projects/uirusu/" target="new">uirusu</a> which allowed me to quickly create this script.

I'd also like to thank <a href="http://virustotal.com" target="new">VirusTotal.com</a> for providing such a fantastic free resource to the security community.

###Contact

To provide any feedback or ask any questions please reach out to Andrew Hay on Twitter at <a href="http://twitter.com/andrewsmhay" target="new">@andrewsmhay</a>.
