package l1;

import com.android.internal.graphics.ColorUtils;
import com.android.internal.graphics.cam.Cam;
import com.android.internal.graphics.cam.CamUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.x;
/* renamed from: l1.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1285t {

    /* renamed from: e  reason: collision with root package name */
    public static final List f11552e = kotlin.collections.n.c(10, 50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000);

    /* renamed from: a  reason: collision with root package name */
    public final C1286u f11553a;

    /* renamed from: b  reason: collision with root package name */
    public final Cam f11554b;

    /* renamed from: c  reason: collision with root package name */
    public final List f11555c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f11556d;

    public C1285t(C1286u spec, int i4) {
        kotlin.jvm.internal.h.e(spec, "spec");
        this.f11553a = spec;
        Cam fromInt = Cam.fromInt(i4);
        kotlin.jvm.internal.h.d(fromInt, "fromInt(seedColor)");
        this.f11554b = fromInt;
        double a4 = spec.f11557a.a(fromInt);
        double a5 = spec.f11558b.a(fromInt);
        float f4 = (float) a4;
        float f5 = (float) a5;
        int[] iArr = new int[12];
        iArr[0] = ColorUtils.CAMToColor(f4, Math.min(40.0f, f5), 99.0f);
        iArr[1] = ColorUtils.CAMToColor(f4, Math.min(40.0f, f5), 95.0f);
        int i5 = 2;
        while (i5 < 12) {
            iArr[i5] = ColorUtils.CAMToColor(f4, f5, i5 == 6 ? 49.6f : 100 - ((i5 - 1) * 10));
            i5++;
        }
        ArrayList arrayList = new ArrayList(12);
        for (int i6 = 0; i6 < 12; i6++) {
            arrayList.add(Integer.valueOf(iArr[i6]));
        }
        this.f11555c = arrayList;
        this.f11556d = x.f(kotlin.collections.s.o(f11552e, arrayList));
        ColorUtils.CAMToColor((float) this.f11553a.f11557a.a(this.f11554b), (float) this.f11553a.f11558b.a(this.f11554b), CamUtils.lstarFromInt(i4));
    }
}
