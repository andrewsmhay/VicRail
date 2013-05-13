##VicRail

###About
Hendra virus was discovered in September 1994 when it caused the deaths of thirteen horses, and a trainer, Victory ('Vic') Rail, at a training complex in Hendra, a suburb of Brisbane in Queensland, Australia.

Rail and a stable hand were involved in nursing the index case, and both fell ill with an influenza-like illness within one week of the first horse’s death. The stable hand recovered while Mr Rail died of respiratory and renal failure.

The script, named in his honor, is used to easily send the cryptographic checksum of a suspected compromised file to Virus Total, Shadowserver, and Team Cymru for comparison with other reported cases of known malware.

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
ruby vicrail.rb eicar.com 
==== VirusTotal - www.virustotal.com ====
eicar.com - sha1
Hash identified in the database...
3395856ce81f2b7382dee72602f798b642f14140: Scanner: TotalDefense Result: the EICAR test string
3395856ce81f2b7382dee72602f798b642f14140: Scanner: MicroWorld-eScan Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: nProtect Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: CAT-QuickHeal Result: EICAR Test File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: McAfee Result: EICAR test file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Malwarebytes Result: Nothing detected
3395856ce81f2b7382dee72602f798b642f14140: Scanner: K7AntiVirus Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: K7GW Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: TheHacker Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: NANO-Antivirus Result: Marker.Dos.EICAR-Test-File.dyb
3395856ce81f2b7382dee72602f798b642f14140: Scanner: F-Prot Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Symantec Result: EICAR Test String
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Norman Result: EICAR_Test_file_not_a_virus!
3395856ce81f2b7382dee72602f798b642f14140: Scanner: ByteHero Result: Nothing detected
3395856ce81f2b7382dee72602f798b642f14140: Scanner: TrendMicro-HouseCall Result: Eicar_test_file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: eSafe Result: EICAR Test File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: ClamAV Result: Eicar-Test-Signature
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Kaspersky Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: BitDefender Result: EICAR-Test-File (not a virus)
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Agnitum Result: EICAR_test_file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: ViRobot Result: EICAR-test
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Sophos Result: EICAR-AV-Test
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Comodo Result: Application.EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: F-Secure Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: DrWeb Result: EICAR Test File (NOT a Virus!)
3395856ce81f2b7382dee72602f798b642f14140: Scanner: VIPRE Result: EICAR (v)
3395856ce81f2b7382dee72602f798b642f14140: Scanner: AntiVir Result: Eicar-Test-Signature
3395856ce81f2b7382dee72602f798b642f14140: Scanner: TrendMicro Result: Eicar_test_file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: McAfee-GW-Edition Result: EICAR test file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Emsisoft Result: EICAR-Test-File (not a virus) (B)
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Jiangmin Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Antiy-AVL Result: AVTEST/EICAR.ETF
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Kingsoft Result: Test.eicar.aa
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Microsoft Result: Virus:DOS/EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: SUPERAntiSpyware Result: NotAThreat.EICAR[TestFile]
3395856ce81f2b7382dee72602f798b642f14140: Scanner: GData Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Commtouch Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: AhnLab-V3 Result: EICAR_Test_File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: VBA32 Result: EICAR-Test-File
3395856ce81f2b7382dee72602f798b642f14140: Scanner: PCTools Result: Virus.DOS.EICAR_test_file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: ESET-NOD32 Result: Eicar test file
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Ikarus Result: EICAR-ANTIVIRUS-TESTFILE
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Fortinet Result: EICAR_TEST_FILE
3395856ce81f2b7382dee72602f798b642f14140: Scanner: AVG Result: EICAR_Test
3395856ce81f2b7382dee72602f798b642f14140: Scanner: Panda Result: EICAR-AV-TEST-FILE


eicar.com - sha256
Hash identified in the database...
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: TotalDefense Result: the EICAR test string
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: MicroWorld-eScan Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: nProtect Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: CAT-QuickHeal Result: EICAR Test File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: McAfee Result: EICAR test file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Malwarebytes Result: Nothing detected
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: K7AntiVirus Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: K7GW Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: TheHacker Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: NANO-Antivirus Result: Marker.Dos.EICAR-Test-File.dyb
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: F-Prot Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Symantec Result: EICAR Test String
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Norman Result: EICAR_Test_file_not_a_virus!
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: ByteHero Result: Nothing detected
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: TrendMicro-HouseCall Result: Eicar_test_file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: eSafe Result: EICAR Test File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: ClamAV Result: Eicar-Test-Signature
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Kaspersky Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: BitDefender Result: EICAR-Test-File (not a virus)
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Agnitum Result: EICAR_test_file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: ViRobot Result: EICAR-test
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Sophos Result: EICAR-AV-Test
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Comodo Result: Application.EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: F-Secure Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: DrWeb Result: EICAR Test File (NOT a Virus!)
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: VIPRE Result: EICAR (v)
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: AntiVir Result: Eicar-Test-Signature
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: TrendMicro Result: Eicar_test_file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: McAfee-GW-Edition Result: EICAR test file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Emsisoft Result: EICAR-Test-File (not a virus) (B)
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Jiangmin Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Antiy-AVL Result: AVTEST/EICAR.ETF
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Kingsoft Result: Test.eicar.aa
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Microsoft Result: Virus:DOS/EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: SUPERAntiSpyware Result: NotAThreat.EICAR[TestFile]
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: GData Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Commtouch Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: AhnLab-V3 Result: EICAR_Test_File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: VBA32 Result: EICAR-Test-File
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: PCTools Result: Virus.DOS.EICAR_test_file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: ESET-NOD32 Result: Eicar test file
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Ikarus Result: EICAR-ANTIVIRUS-TESTFILE
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Fortinet Result: EICAR_TEST_FILE
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: AVG Result: EICAR_Test
275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f: Scanner: Panda Result: EICAR-AV-TEST-FILE


==== Shadowserver - http://bin-test.shadowserver.org/ ====
eicar.com - sha1
Hash identified in the database...
3395856ce81f2b7382dee72602f798b642f14140 {"source": "NIST", "filename": "eicar.com.txt", "crc32": "6851CF3C", "product_name": "Linux Format", "mfg_name": "Linux Format", "os_name": "Linux", "language": "English", "source_version": "$version", "product_version": "April 2005", "os_version": "Generic", "application_type": "Software", "filesize": "68", "os_mfg": "Linux"}

==== Team Cymru Malware Hash Registry - http://www.team-cymru.org/Services/MHR/ ====
eicar.com - sha1
Hash identified in the database...
3395856ce81f2b7382dee72602f798b642f14140 1259633424 83

</pre></code>

###Thanks

I'd like to thank <a href="http://www.arxopia.com/about/" target="new">Arxopia</a> for creating <a href="http://www.arxopia.com/projects/uirusu/" target="new">uirusu</a> which allowed me to quickly create this script.

I'd also like to thank <a href="http://virustotal.com" target="new">VirusTotal.com</a> for providing such a fantastic free resource to the security community.

###Contact

To provide any feedback or ask any questions please reach out to Andrew Hay on Twitter at <a href="http://twitter.com/andrewsmhay" target="new">@andrewsmhay</a>.
