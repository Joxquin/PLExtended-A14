package com.android.launcher3;

import android.graphics.PointF;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.model.data.ItemInfo;
import java.io.PrintWriter;
/* renamed from: com.android.launcher3.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0410q implements DeviceProfile.ViewScaleProvider {
    public static StringBuilder a(StringBuilder sb, float f4, PrintWriter printWriter, String str, String str2) {
        sb.append(f4);
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        return sb2;
    }

    public static StringBuilder b(StringBuilder sb, String str, PrintWriter printWriter, String str2) {
        sb.append(str);
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        return sb2;
    }

    public static StringBuilder c(StringBuilder sb, boolean z4, PrintWriter printWriter, String str, String str2) {
        sb.append(z4);
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        return sb2;
    }

    @Override // com.android.launcher3.DeviceProfile.ViewScaleProvider
    public PointF getScaleFromItemInfo(ItemInfo itemInfo) {
        return DeviceProfile.DEFAULT_SCALE;
    }
}
