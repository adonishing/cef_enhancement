ע�����
1. ������֧��HEVC����İ汾��ʹ��html5test.com���Ի�����ʾ��֧��H.265��ԭ�����£�
html5test.com �ϼ��������Ƿ�֧��HEVC���� video.canPlayType() �����������codec�Ƿ�֧�ֶ�ȷ��������Ƿ�֧��H.265�ģ�
'video/mp4; codecs="hvc1.1.L0.0"'
'video/mp4; codecs="hev1.1.L0.0"'

������ChromiumԴ�� media\base\video_codes.cc �У�Chromium 76 3809�汾����

// The specification for HEVC codec id strings can be found in ISO IEC 14496-15 dated 2012 or newer in the Annex E.3
bool ParseHEVCCodecId(...) { ... }

������ֵ�ǲ����� ISO IEC 14496-15 �淶�ģ��ο�Annex E.3������˻���ʾ��֧�֡�ʵ�����ǿ��Բ���HEVC�ļ��ġ�

ע��������codec��macOS Safari 13.0.4������Ч�ģ����Ա�ʶ��ġ�

2. �޸�ֻ�ṩ��branding=Chrome��32λwindows�汾��64λwindows��macOSû�а���

3. play_hevc.html�ǲ���ʹ��video��ǩ����hevc�����mp4�Ĳ���ҳ�档�����õ�hevc��Ƶ�ļ����Ե� Elecard��վ���ҵ�һЩ��https://www.elecard.com/videos��

4. ���ڵ����⣺ ����Elecard���ṩ��һ��1280x720��HEVC MP4�������е����壨�ˡ��ﳵ�����˶��л����������һ�£�ԭ��δ֪������һ��3840x2160��HEVC MP4���������������뿨��һ�¡�ԭ��δ֪�����Ի�����С�ױʼǱ�Pro 15.6 i7-8550 1.8G/16G