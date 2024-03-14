package f0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import com.android.systemui.shared.system.QuickStepContract;
import d0.C0797e;
import d0.InterfaceC0793a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: f0.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0843j extends G {

    /* renamed from: f  reason: collision with root package name */
    public androidx.slice.core.a f9190f;

    /* renamed from: g  reason: collision with root package name */
    public C0849p f9191g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f9192h;

    /* renamed from: i  reason: collision with root package name */
    public List f9193i;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0091, code lost:
        if (((!"slice".equals(r4.f4057b) || r4.h("actions", "keywords", "see_more") || d0.C0797e.d(r4, "text", null) == null) ? false : true) != false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0843j(androidx.slice.Slice r18) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.C0843j.<init>(androidx.slice.Slice):void");
    }

    public static int d(G g4, boolean z4, List list) {
        if (g4 != null) {
            if (g4 instanceof C0838e) {
                return 1;
            }
            C0849p c0849p = (C0849p) g4;
            SliceItem sliceItem = c0849p.f9203f;
            androidx.slice.core.a aVar = sliceItem != null ? new androidx.slice.core.a(sliceItem) : null;
            SliceItem sliceItem2 = c0849p.f9210m;
            if (sliceItem2 != null) {
                return "action".equals(sliceItem2.f4057b) ? 4 : 5;
            } else if (c0849p.f9211n != null) {
                return 6;
            } else {
                if (aVar == null || !aVar.b()) {
                    if (!z4 || list == null) {
                        return c0849p.f9209l.size() > 0 ? 3 : 0;
                    }
                    for (int i4 = 0; i4 < list.size(); i4++) {
                        if (((InterfaceC0793a) list.get(i4)).b()) {
                            return 3;
                        }
                    }
                    return 0;
                }
                return 3;
            }
        }
        return 0;
    }

    @Override // f0.G
    public final int a(J j4, O o4) {
        j4.getClass();
        if (o4.f9134c == 1) {
            return this.f9191g.a(j4, o4);
        }
        int i4 = o4.f9132a;
        int a4 = j4.a(this.f9192h, o4);
        if (i4 > 0) {
            i4 = Math.max(this.f9191g.a(j4, o4), i4);
        }
        int i5 = i4 > 0 ? i4 : j4.f9097F;
        return (!(a4 - i5 >= j4.f9096E) || j4.f9098G) ? i4 <= 0 ? a4 : Math.min(i5, a4) : i5;
    }

    public final InterfaceC0793a e(Context context) {
        SliceItem sliceItem;
        SliceItem sliceItem2;
        androidx.slice.core.a aVar;
        Intent launchIntentForPackage;
        androidx.slice.core.a aVar2 = this.f9190f;
        if (aVar2 != null) {
            return aVar2;
        }
        SliceItem sliceItem3 = this.f9085a;
        if (sliceItem3 != null) {
            SliceItem e4 = C0797e.e(sliceItem3, "action", new String[]{"title", "shortcut"}, null);
            if (e4 != null) {
                sliceItem = C0797e.d(e4, "image", "title");
                sliceItem2 = C0797e.d(e4, "text", null);
            } else {
                sliceItem = null;
                sliceItem2 = null;
            }
            if (e4 == null) {
                e4 = C0797e.d(this.f9085a, "action", null);
            }
            if (sliceItem == null) {
                sliceItem = C0797e.d(this.f9085a, "image", "title");
            }
            if (sliceItem2 == null) {
                sliceItem2 = C0797e.d(this.f9085a, "text", "title");
            }
            if (sliceItem == null) {
                sliceItem = C0797e.d(this.f9085a, "image", null);
            }
            if (sliceItem2 == null) {
                sliceItem2 = C0797e.d(this.f9085a, "text", null);
            }
            int e5 = sliceItem != null ? androidx.slice.core.a.e(sliceItem) : 5;
            if (context != null) {
                SliceItem d4 = C0797e.d(this.f9085a, "slice", null);
                if (d4 != null) {
                    Uri c4 = d4.g().c();
                    IconCompat iconCompat = sliceItem != null ? (IconCompat) sliceItem.f4059d : null;
                    CharSequence charSequence = sliceItem2 != null ? (CharSequence) sliceItem2.f4059d : null;
                    PackageManager packageManager = context.getPackageManager();
                    ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(c4.getAuthority(), 0);
                    ApplicationInfo applicationInfo = resolveContentProvider != null ? resolveContentProvider.applicationInfo : null;
                    if (applicationInfo != null) {
                        if (iconCompat == null) {
                            Drawable applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                            if (applicationIcon instanceof BitmapDrawable) {
                                Bitmap bitmap = ((BitmapDrawable) applicationIcon).getBitmap();
                                PorterDuff.Mode mode = IconCompat.f3067k;
                                bitmap.getClass();
                                iconCompat = new IconCompat(1);
                                iconCompat.f3069b = bitmap;
                            } else {
                                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                Canvas canvas = new Canvas(createBitmap);
                                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                                applicationIcon.draw(canvas);
                                PorterDuff.Mode mode2 = IconCompat.f3067k;
                                createBitmap.getClass();
                                IconCompat iconCompat2 = new IconCompat(1);
                                iconCompat2.f3069b = createBitmap;
                                iconCompat = iconCompat2;
                            }
                            e5 = 2;
                        }
                        if (charSequence == null) {
                            charSequence = packageManager.getApplicationLabel(applicationInfo);
                        }
                        if (e4 == null && (launchIntentForPackage = packageManager.getLaunchIntentForPackage(applicationInfo.packageName)) != null) {
                            PendingIntent activity = PendingIntent.getActivity(context, 0, launchIntentForPackage, QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE);
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            e4 = new SliceItem(activity, new Slice(arrayList, (String[]) arrayList2.toArray(new String[arrayList2.size()]), c4, null), (String) null, new String[0]);
                        }
                    }
                    if (e4 == null) {
                        e4 = new SliceItem(PendingIntent.getActivity(context, 0, new Intent(), QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE), (Slice) null, (String) null, (String[]) null);
                    }
                    if (charSequence != null && iconCompat != null) {
                        e4.c();
                        aVar = new androidx.slice.core.a(iconCompat, e5, charSequence);
                        return aVar;
                    }
                }
            } else if (sliceItem != null && e4 != null && sliceItem2 != null) {
                e4.c();
                aVar = new androidx.slice.core.a((IconCompat) sliceItem.f4059d, e5, (CharSequence) sliceItem2.f4059d);
                return aVar;
            }
        }
        return null;
    }

    public final boolean f() {
        return (this.f9085a != null) && this.f9192h.size() > 0;
    }
}
