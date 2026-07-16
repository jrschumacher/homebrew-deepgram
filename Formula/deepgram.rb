# This formula is auto-generated from scripts/templates/deepgram.rb.template
# in https://github.com/deepgram/cli on every root `v*` release of deepctl.
# Manual edits to this file will be overwritten on the next release.
# To change the formula, edit the template in deepgram/cli — not this file.

class Deepgram < Formula
  include Language::Python::Virtualenv

  desc "Official Deepgram CLI for speech recognition and audio intelligence"
  homepage "https://github.com/deepgram/cli"
  url "https://files.pythonhosted.org/packages/e8/78/bfe31c555c03dd53fed751e4f105148fd8a2644acd074e7fafeeccdb7730/deepctl-0.2.26.tar.gz"
  sha256 "c133c328fb4a2e20415709afe8f8e24ed782ad3a497f65ce08d396ba2cdd51d4"
  license "MIT"

  # Build-time deps for the `cryptography` and `pydantic_core` resources,
  # which compile Rust extensions via `maturin`. Language::Python::Virtualenv
  # defaults to --no-binary :all: so precompiled wheels are bypassed and the
  # Rust toolchain has to be available during install.
  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  # Used by `dg debug probe`, `dg ffprobe`, and raw-audio streaming flows
  # (e.g. `ffmpeg ... | dg listen --encoding linear16`).
  depends_on "ffmpeg"
  # PortAudio backend used by `sounddevice` for `dg listen --mic`. Imported
  # lazily, but required at runtime when capturing from the microphone.
  depends_on "portaudio"
  depends_on "python@3.13"

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/ce/f4/eec0465c2f67b2664688d0240b3212d5196fd89e741df67ddb81f8d35658/aiohappyeyeballs-2.7.1.tar.gz"
    sha256 "065665c041c42a5938ed220bdcd7230f22527fbec085e1853d2402c8a3615d9d"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/82/78/8ea7308cac6934de8c74a14f3d5f65d1c89287426688be79538d0e5c013d/aiohttp-3.14.1.tar.gz"
    sha256 "307f2cff90a764d329e77040603fa032db89c5c24fdad50c4c15334cba744035"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz"
    sha256 "f47eecd9468083c2029cc99945502cb7708b082c232f9aca65da147157b251c7"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c9/c7/424b75da314c1045981bd9777432fad05a9e0c69daa4ed7e308bbaffe405/certifi-2026.6.17.tar.gz"
    sha256 "024c88eeec92ca068db80f02b8b07c9cef7b9fe261d1d535abfd5abd6f6af432"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/57/5f/ff100cae70ebe9d8df1c01a00e510e45d9adb5c1fdda84791b199141de97/cffi-2.1.0.tar.gz"
    sha256 "efc1cdd798b1aaf39b4610bba7aad28c9bea9b910f25c784ccf9ec1fa719d1f9"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz"
    sha256 "673611bbd43f0810bec0b0f028ddeaaa501190339cac411f347ac76917c3ae7b"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/1f/99/d1c90d6041656cc6ee229dc99cd67fd0cd5aec3c5f7d72fffc27cc750054/cryptography-49.0.0.tar.gz"
    sha256 "f89660a348f4f78a92366240a61404e337586ef7f5909a2fef59ca88ef505493"
  end

  resource "deepctl-cmd-api" do
    url "https://files.pythonhosted.org/packages/1c/24/b1f5c904e78ec4c9bc1dfede1e8182676f622af0c24265874fc91a6f44bc/deepctl_cmd_api-0.0.2.tar.gz"
    sha256 "f0280d82c0bee46310a6ed987a19422dd5ddbc192cfff7c67cb2d6f548e475cc"
  end

  resource "deepctl-cmd-billing" do
    url "https://files.pythonhosted.org/packages/23/2a/3a527ee74f76b21e7b850fb84ccf7e55ad71570eb1ec6c4b0e3af8e5f8ee/deepctl_cmd_billing-0.0.2.tar.gz"
    sha256 "76aac55e6c51618fb63402ce8ee04140750f62ef4952ed35066c4a27d5f0bec7"
  end

  resource "deepctl-cmd-completion" do
    url "https://files.pythonhosted.org/packages/71/25/ef84e874b7c3a2993d0cf89aad8735f1e37ccd2f2468dbddc88a6b7a0d20/deepctl_cmd_completion-0.0.3.tar.gz"
    sha256 "083c69ba57b7b29fc8e811d2239c08b653531916934ef787965dc3d4c501e270"
  end

  resource "deepctl-cmd-debug" do
    url "https://files.pythonhosted.org/packages/0a/85/7c706d23fb6240dd19d36be0b6b72cb9442dd6b1af5d6a3081bb648bf7ad/deepctl_cmd_debug-0.1.12.tar.gz"
    sha256 "fd204502f78c0e2dd2e53d1bce3c836803b5a361665456fd95c5bdd2ce8f0526"
  end

  resource "deepctl-cmd-debug-audio" do
    url "https://files.pythonhosted.org/packages/45/b7/bd32591de4a1775e4d9af357d121ba86794abd4b33858a4de397d7ca9be5/deepctl_cmd_debug_audio-0.1.13.tar.gz"
    sha256 "e5428605c5e1be3cd20f535a0670c8271e4c686382baf88795ece569afcc353a"
  end

  resource "deepctl-cmd-debug-browser" do
    url "https://files.pythonhosted.org/packages/83/51/aafb9a405da6a715c114dce360015d19bfc58ffef9b11804b1c7c5d0e332/deepctl_cmd_debug_browser-0.1.12.tar.gz"
    sha256 "cfe49681c9d06f0dc25547889012eb4b16aab81bc856c75ead8e05046f8a446e"
  end

  resource "deepctl-cmd-debug-network" do
    url "https://files.pythonhosted.org/packages/4e/0d/8726665878e363ba777786bc79eab2822e0f606b4898703c0360b18d21d4/deepctl_cmd_debug_network-0.1.12.tar.gz"
    sha256 "ff1b501984fea7ed756b359ea27025715535113b4da9a69c2240c9a82dd2e0bb"
  end

  resource "deepctl-cmd-debug-probe" do
    url "https://files.pythonhosted.org/packages/f9/12/079511eef3f64c6db8ad6e3f10366a75f048215c21056ae1877b71836af2/deepctl_cmd_debug_probe-0.0.2.tar.gz"
    sha256 "8ebbc0a648ed56638eec67930c54afaf8b649c415cc970b72bcb7e3958ffb11a"
  end

  resource "deepctl-cmd-debug-toolkit" do
    url "https://files.pythonhosted.org/packages/27/f1/f83e5f76591ee1ff304b8bbb588b2029760fe790a615e378e06a1691bee3/deepctl_cmd_debug_toolkit-0.1.0.tar.gz"
    sha256 "f58f26ed1d77d3f1504a07f6fa2e6dd8800d5d525810dd027164e58841aff5ca"
  end

  resource "deepctl-cmd-ffprobe" do
    url "https://files.pythonhosted.org/packages/88/d0/0f6733255791f3b1a3412855ce4f2f4aaf93c04925832c2e42b6a1f58d36/deepctl_cmd_ffprobe-0.0.2.tar.gz"
    sha256 "9fa34d98455522a677727d029b6590ec4a173ebff086c9a52798656d6b14db35"
  end

  resource "deepctl-cmd-init" do
    url "https://files.pythonhosted.org/packages/11/17/d07678679ac0eaa0ba0a328eed811c5ee3d688e42e917cbea65a21f38950/deepctl_cmd_init-0.0.4.tar.gz"
    sha256 "4944ab2f27b9a52ede7388d94c69f97fdfad7f39f38fdd3c85a0a8e74753875d"
  end

  resource "deepctl-cmd-keys" do
    url "https://files.pythonhosted.org/packages/63/42/3cef553537e43081800265caf4fd832af8f7037a3f900197456d7a4d524a/deepctl_cmd_keys-0.0.3.tar.gz"
    sha256 "fbff1615028ec7edb1c91c2bd85dde7f18741d72eed214a3c307820f89f5ffbe"
  end

  resource "deepctl-cmd-listen" do
    url "https://files.pythonhosted.org/packages/83/33/4c84045c93c1dd4e95fc2621b7af4075376179708c0c67ea270a7d510a8b/deepctl_cmd_listen-0.0.13.tar.gz"
    sha256 "f48b8f9a2d18470cb36607c96b6ee56be662cfe22fd8c31db2d8e8ad6f60355b"
  end

  resource "deepctl-cmd-login" do
    url "https://files.pythonhosted.org/packages/74/61/eb5add8e9b603c1c45b1583f5687c171eefeebbb7d83a656b68f4b79fce5/deepctl_cmd_login-0.1.16.tar.gz"
    sha256 "9fd81d1e1913768fd798b66caa6ae3037fdcddb67748541a96ccdb978532d214"
  end

  resource "deepctl-cmd-mcp" do
    url "https://files.pythonhosted.org/packages/13/6f/8e98bb6560de8816055f0de8ad9fa01827b6c64c3acc97936e8f0a8028b1/deepctl_cmd_mcp-0.1.14.tar.gz"
    sha256 "64b064a93ffe37ff8e22c2a277474d401f85a5174f0916d6563516cd46caeff2"
  end

  resource "deepctl-cmd-members" do
    url "https://files.pythonhosted.org/packages/14/81/d68eeb5b1613626df84df9fe4b85b68514d4025c0bdc472b23dd612a146f/deepctl_cmd_members-0.0.3.tar.gz"
    sha256 "cc0c385400904f2cbe56364905c02322900c96eb4ada03943db21758609c461d"
  end

  resource "deepctl-cmd-models" do
    url "https://files.pythonhosted.org/packages/54/0b/7c8864092caf3496e7c6c1ff8e4cf4a752b51da2d0059d8b69d04e640258/deepctl_cmd_models-0.0.2.tar.gz"
    sha256 "e198182386034ec19f558583f721fdd9650d8f5b00afee172c07ccf5b12da31b"
  end

  resource "deepctl-cmd-plugin" do
    url "https://files.pythonhosted.org/packages/27/0a/ae983248e711801265e4218743a9d78fb01c2ea90f51dc6ef278528e1480/deepctl_cmd_plugin-0.1.12.tar.gz"
    sha256 "f7e9e81556427a168138da10b974bf417af2c375364d31876f74d99d5b3a8624"
  end

  resource "deepctl-cmd-projects" do
    url "https://files.pythonhosted.org/packages/8c/24/a3ac74f237e48d7f38e5f6c43aaa7ae917a7eed6b5dbb387d55d89dc5b09/deepctl_cmd_projects-0.1.12.tar.gz"
    sha256 "b166889634902091a702dd68b28dec3cb2b20700ffd51721f4415a0322d960cd"
  end

  resource "deepctl-cmd-read" do
    url "https://files.pythonhosted.org/packages/50/aa/e3ec350e3d8c31be7565a2ba1c0d09e8e2f57f9ac661cb4c89ab0c948114/deepctl_cmd_read-0.0.2.tar.gz"
    sha256 "4218c499d87723ac6f66a620793d7ee9f95bc29e8bee7459fe90b0ef354d188f"
  end

  resource "deepctl-cmd-requests" do
    url "https://files.pythonhosted.org/packages/d2/f9/d2d51c7362cb0024efa804cb35252844450368b9ebcd3bc1d4899e9473f6/deepctl_cmd_requests-0.0.2.tar.gz"
    sha256 "0ed232572bed0741b4b46700183923e788fe010b07738125598023e0f38562d6"
  end

  resource "deepctl-cmd-skills" do
    url "https://files.pythonhosted.org/packages/84/b5/b94befdff9b984a4d89d01a7e0948028595172d4c091a2b7fb28d70916e7/deepctl_cmd_skills-0.0.6.tar.gz"
    sha256 "1fdbeb3729a4e30f2d0717215918deae42e8a799e175b4d562fa232460f35154"
  end

  resource "deepctl-cmd-speak" do
    url "https://files.pythonhosted.org/packages/f1/32/0b927a3bf9a886aa7f46a761c5b8f8e16dd80ef3d7fcff610fdc1a37f1c4/deepctl_cmd_speak-0.0.3.tar.gz"
    sha256 "e5d731416c77db15b64462bb111a0395d1b17587ac0e87004ce8217a7f90250b"
  end

  resource "deepctl-cmd-transcribe" do
    url "https://files.pythonhosted.org/packages/0d/23/46991cb6a33f226993b650dd9137636818aca3e7fd2b342e3fdc65c6f304/deepctl_cmd_transcribe-0.1.12.tar.gz"
    sha256 "5e4e16f8c78c6a1b12a853904ed2a13833fe598815462a4d09993e457815f8ff"
  end

  resource "deepctl-cmd-update" do
    url "https://files.pythonhosted.org/packages/e2/98/9b158b8b533edebb839e0c37947dff886dd4a2a6051ce8ee815e3332a745/deepctl_cmd_update-0.2.5.tar.gz"
    sha256 "95745cb659238a3b74772a82d29364f21fd4b9a27955ae9cd0a72a718e0bbcee"
  end

  resource "deepctl-cmd-usage" do
    url "https://files.pythonhosted.org/packages/c6/92/a392717c5a3a2f615abc78e6f03139a72f21939736aae5741fba198c9d1c/deepctl_cmd_usage-0.1.12.tar.gz"
    sha256 "189af5a61ba8edffe8d3edf9a57452557db4c3e52f2758510b38ba96c8834e88"
  end

  resource "deepctl-core" do
    url "https://files.pythonhosted.org/packages/fd/8d/a4b9d88c87f4b878ea2146249b0d03853b08adcd9a0d89df4638b6c5ce97/deepctl_core-0.2.14.tar.gz"
    sha256 "a522875dcc0852d02874715498953d72d03fbf5ab20b3417c04827c2d1dcd990"
  end

  resource "deepctl-shared-utils" do
    url "https://files.pythonhosted.org/packages/77/a2/a0116365b23a025152167b9c21e3f6be3ab005a0e054856b07f0687f6f1d/deepctl_shared_utils-0.1.12.tar.gz"
    sha256 "b52d1a6bb29d83c8d7efc001e9f4f163049c40d3160471556a15a4378054564e"
  end

  resource "deepctl-telemetry" do
    url "https://files.pythonhosted.org/packages/24/9b/432c85fec80ef4291484cc9d5428f696379716abc1283a667f9c0baef623/deepctl_telemetry-0.0.5.tar.gz"
    sha256 "6b7dc75e9edb141f974a47f79c6bec8e7cd53c7fdd189833393c4b4293948f44"
  end

  resource "deepgram-captions" do
    url "https://files.pythonhosted.org/packages/ee/af/7e184a69de5a83e03a1b5d3d325d82bc19156618011ae366079fda556180/deepgram_captions-2.0.0.tar.gz"
    sha256 "0f0bde3391c3f40be9fdfc9e42a7cf89a82b8a460aa62d24ddd8e55a100a6dd3"
  end

  resource "deepgram-mcp" do
    url "https://files.pythonhosted.org/packages/ea/ad/828d8a554df8125c5e63d9056c1765705b6e64a139e5cac36fe31d27e859/deepgram_mcp-0.1.1.tar.gz"
    sha256 "907955b48130f57d91a81342f1adeeb7a37153d042e1e7affc8fc85f90e3bf54"
  end

  resource "deepgram-sdk" do
    url "https://files.pythonhosted.org/packages/60/c2/ba5b06c2859d7824289c40037d1b55a51d9ee3766b2097483858f4ae7f1e/deepgram_sdk-7.5.0.tar.gz"
    sha256 "4801596e7ac33fe4b0979d6b5358b003456f254f8040a15a061d23a12cb1b41b"
  end

  resource "ffmpeg-python" do
    url "https://files.pythonhosted.org/packages/dd/5e/d5f9105d59c1325759d838af4e973695081fbbc97182baf73afc78dec266/ffmpeg-python-0.2.0.tar.gz"
    sha256 "65225db34627c578ef0e11c8b1eb528bb35e024752f6f10b78c011f6f64c4127"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz"
    sha256 "3ede829ed8d842f6cd48fc7081d7a41001a56f1f38603f9d49bf3020d59a31ad"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/a7/b2/4140c69c6a66432916b26158687e821ba631a4c9273c474343badf84d3ba/future-1.0.0.tar.gz"
    sha256 "bd2968309307861edae1458a4f8a4f3598c03be43b97521076aebf5d94c07b05"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/0f/4c/751061ffa58615a32c31b2d82e8482be8dd4a89154f003147acee90f2be9/httpx_sse-0.4.3.tar.gz"
    sha256 "9b1ed0127459a66014aec3c56bebd93da3c1bc8bb6618c8082039a44889a755d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cd/63/9496c57188a2ee585e0f1db071d75089a11e98aa86eb99d9d7618fc1edce/idna-3.18.tar.gz"
    sha256 "ffb385a7e039654cef1ab9ef32c6fafe283c0c0467bba1d9029738ce4a14a848"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/06/c0/ed4a27bc5571b99e3cff68f8a9fa5b56ff7df1c2251cc715a652ddd26402/jaraco.classes-3.4.0.tar.gz"
    sha256 "47a024b51d0239c0dd8c8540c6c7f484be3b8fcf0b2d85c13825780d3b3f3acd"
  end

  resource "jaraco.context" do
    url "https://files.pythonhosted.org/packages/c9/60/e83781b07f9a66d1d102a0459e5028f3a7816fdd0894cba90bee2bbbda14/jaraco.context-5.3.0.tar.gz"
    sha256 "c2f67165ce1f9be20f32f650f25d8edfc1646a8aeee48ae06fb35f90763576d2"
  end

  resource "jaraco.functools" do
    url "https://files.pythonhosted.org/packages/bc/66/746091bed45b3683d1026cb13b8b7719e11ccc9857b18d29177a18838dc9/jaraco_functools-4.0.1.tar.gz"
    sha256 "d33fa765374c0611b52f8b3a795f8900869aa88c84769d4d1746cd68fb28c3e8"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/7b/6f/357efd7602486741aa73ffc0617fb310a29b588ed0fd69c2399acbb85b0c/jeepney-0.9.0.tar.gz"
    sha256 "cf0e9e845622b81e4a28df94c40345400256ec608d0e55bb8a3feaa9163f5732"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/43/4b/674af6ef2f97d56f0ab5153bf0bfa28ccb6c3ed4d1babf4305449668807b/keyring-25.7.0.tar.gz"
    sha256 "fe01bd85eb3f8fb3dd0405defdeac9a5b4f6f0439edbb3149577f244a2e8245b"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/6e/77/9450b8f251a13affb6281997d0523c4615f8a8b35d0b21ff30db3a5aac9d/mcp-1.28.1.tar.gz"
    sha256 "d51e36a5f5644faea4f85ea649bfffa6bc6c26770d42798ad6a3de3d2ba69683"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/de/1d/f4da6f02cdffe04d6362210b807146a26044c88d839208aec273bb0d9184/more_itertools-11.1.0.tar.gz"
    sha256 "48e8f4d9e7e5878571ecf6f2b4e57634f93cd474cc8cfbd2376f2d11b396e30d"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/1a/c2/c2d94cbe6ac1753f3fc980da97b3d930efe1da3af3c9f5125354436c073d/multidict-6.7.1.tar.gz"
    sha256 "ec6652a1bee61c53a3e5776b6049172c53b6aaba34f18c9ad04f82712bac623d"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/22/fd/89965aa4ac08c74998539fcbf24fa3540f3e15237fbeb6bcf9c908f4aade/numpy-2.5.1.tar.gz"
    sha256 "a48a113e6afea91f5608793bafa7ef2ad481fefbda87ec5069f483de61cb9fa3"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/f1/e7a6dd94a8d4a5626c03e4e99c87f241ba9e350cd9e6d75123f992427270/packaging-26.2.tar.gz"
    sha256 "ff452ff5a3e828ce110190feff1178bb1f2ea2281fa2075aadb987c2fb221661"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/d7/47/e4501f49c178ae1d9f4a75073fda4204f52647993f075a9db4d14930e0c5/platformdirs-4.10.0.tar.gz"
    sha256 "31e761a6a0ca04faf7353ea759bdba55652be214725111e5aac52dfa29d4bef7"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/ec/44/c87281c333769159c50594f22610f77398a47ccbfbbf23074e744e86f87c/propcache-0.5.2.tar.gz"
    sha256 "01c4fc7480cd0598bb4b57022df55b9ca296da7fc5a8760bd8451a7e63a7d427"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/18/a5/b60d21ac674192f8ab0ba4e9fd860690f9b4a6e51ca5df118733b487d8d6/pydantic-2.13.4.tar.gz"
    sha256 "c40756b57adaa8b1efeeced5c196f3f3b7c435f90e84ea7f443901bec8099ef6"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/9d/56/921726b776ace8d8f5db44c4ef961006580d91dc52b803c489fafd1aa249/pydantic_core-2.46.4.tar.gz"
    sha256 "62f875393d7f270851f20523dd2e29f082bcc82292d66db2b64ea71f64b6e1c1"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/5c/b5/8f48e906c3e0205276e8bd8cb7512217a87b2685304d64be27cad5b3019f/pydantic_settings-2.14.2.tar.gz"
    sha256 "c19dd64b19097f1de80184f0cc7b0272a13ae6e170cbf240a3e27e381ed14a5f"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz"
    sha256 "6757cd03768053ff99f3039c1a36d6c0aa0b263438fcab17520b30a303a82b5f"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/3b/81/58d0ac84e1ef3a3843791d6954d94c0b33d526c75eeb1efbce9d0a4c4077/pyjwt-2.13.0.tar.gz"
    sha256 "41571c89ca91598c79e8ef18a2d07367d4810fbbd6f637794879baf1b7703423"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/82/ed/0301aeeac3e5353ef3d94b6ec08bbcabd04a72018415dcb29e588514bba8/python_dotenv-1.2.2.tar.gz"
    sha256 "2c371a91fbd7ba082c2c1dc1f8bf89ca22564a087c2c287cd9b662adde799cf3"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/5b/42/55c32bb9b12693c092ad250a0e82edb5b31ddeda6eb772de5f308b3804ad/python_multipart-0.0.32.tar.gz"
    sha256 "be54b7f3fa167bb83e4fcd936b887b708f4e57fe75911c02aebf53efaf8d938e"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "SecretStorage" do
    url "https://files.pythonhosted.org/packages/1c/03/e834bcd866f2f8a49a85eaff47340affa3bfa391ee9912a952a1faa68c7b/secretstorage-3.5.0.tar.gz"
    sha256 "f04b8e4689cbce351744d5537bf6b1329c6fc68f91fa666f60a380edddcd11be"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/48/ff/670abe04c5072719b5060ed93851d0d69525d60f8f2c5810f8becd58f9c1/sentry_sdk-2.66.0.tar.gz"
    sha256 "9727d35aa83c56cd53294676fe65b96296a334c9ce107fa2142bd70f47acb265"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/2a/f9/2592608737553638fca98e21e54bfec40bf577bb98a61b2770c912aab25e/sounddevice-0.5.5.tar.gz"
    sha256 "22487b65198cb5bf2208755105b524f78ad173e5ab6b445bdab1c989f6698df3"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/d2/1b/bc9e3e7a72dcdad7dc7888758f5d00f56f8909ed5cfdff822bd72bb4c520/sse_starlette-3.4.5.tar.gz"
    sha256 "83072538bc211a2f68b7b0422226c4af3e9b62e106e07034664b832ca019842a"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/eb/e3/7c1dc7381d9f8ab7d854328ebfa884e62cb3f3d8549ddfd37c7814f42afa/starlette-1.3.1.tar.gz"
    sha256 "05d0213193f2fbaae60e2ecb593b4add4262ad4e46536b54abe36f11a71724e0"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/37/78/fda3361b56efc27944f24225f6ecd13d96d6fcfe37bd0eb34e2f4c63f9fc/typer-0.27.0.tar.gz"
    sha256 "629bd12ea5d13a17148125d9a264f949eb171fb3f120f9b04d85873cab054fa5"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/a2/65/b7c6c443ccc58678c91e1e973bbe2a878591538655d6e1d47f24ba1c51f3/uvicorn-0.51.0.tar.gz"
    sha256 "f6f4b69b657c312f516dd2d268ab9ae6f254b11e4bac504f37b2ab58b24dd0b0"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/8c/02/b9a097e1e16fee4e2fd1ec8c39f6a9c5d6257bae8fa12640caf869f54436/websockets-16.1.tar.gz"
    sha256 "299468cbe42e2b9981134c7c51d99387d8a7bf562b00183b3eec53f882846dad"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/79/12/1e8f37460ea0f7eb59c221fdaf0ed75e7ac43e97f8093b9c6f411df50a78/yarl-1.24.2.tar.gz"
    sha256 "9ac374123c6fd7abf64d1fec93962b0bd4ee2c19751755a762a72dd96c0378f8"
  end

  def install
    virtualenv_install_with_resources

    # Drive completion generation via the `dg` alias so Click derives the
    # _DG_COMPLETE env var; using `deepctl` here would yield _DEEPCTL_COMPLETE
    # and silently produce non-functional completions for users who type `dg`.
    generate_completions_from_executable(
      bin/"dg",
      shells:                 [:bash, :zsh, :fish],
      shell_parameter_format: :click,
    )
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deepctl --version")
    assert_match version.to_s, shell_output("#{bin}/dg --version")
    assert_match version.to_s, shell_output("#{bin}/deepgram --version")

    assert_match "Usage:", shell_output("#{bin}/dg --help")

    # Regression test for the IsolatedVenvStrategy plugin-discovery path that
    # is unique to Homebrew installs (see deepctl-cmd-plugin/strategies.py).
    # `dg plugin list` must succeed in a fresh HOME with no plugin venv.
    ENV["HOME"] = testpath
    assert_match(/plugin/i, shell_output("#{bin}/dg plugin list 2>&1"))
  end
end
