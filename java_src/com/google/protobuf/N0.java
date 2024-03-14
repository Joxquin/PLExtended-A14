package com.google.protobuf;
/* loaded from: classes.dex */
public final class N0 {
    public static String a(ByteString byteString) {
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i4 = 0; i4 < byteString.size(); i4++) {
            byte h4 = byteString.h(i4);
            if (h4 == 34) {
                sb.append("\\\"");
            } else if (h4 == 39) {
                sb.append("\\'");
            } else if (h4 != 92) {
                switch (h4) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (h4 < 32 || h4 > 126) {
                            sb.append('\\');
                            sb.append((char) (((h4 >>> 6) & 3) + 48));
                            sb.append((char) (((h4 >>> 3) & 7) + 48));
                            sb.append((char) ((h4 & 7) + 48));
                            break;
                        } else {
                            sb.append((char) h4);
                            continue;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
