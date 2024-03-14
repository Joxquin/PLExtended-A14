package L2;

import K2.G;
import android.os.Debug;
import android.util.Log;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import r1.C1380a;
import r1.C1381b;
import r1.C1382c;
import r1.C1383d;
import s1.C1393a;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f1303a = Log.isLoggable("StatsLog", 2);

    public static void a(G g4, d dVar) {
        byte[] bArr;
        byte[] bArr2;
        List list;
        h hVar = dVar.f1320h;
        int i4 = 0;
        if (hVar == null || (list = hVar.f1328a) == null || list.isEmpty()) {
            bArr = null;
        } else {
            ArrayList arrayList = new ArrayList();
            List list2 = hVar.f1328a;
            for (int i5 = 0; i5 < list2.size(); i5++) {
                f fVar = (f) list2.get(i5);
                C1380a d4 = C1381b.d();
                d4.b(fVar.f1324a);
                d4.a(fVar.f1325b);
                arrayList.add((C1381b) d4.build());
            }
            C1382c d5 = C1383d.d();
            d5.b(hVar.f1329b);
            d5.a(arrayList);
            bArr = ((C1383d) d5.build()).toByteArray();
        }
        C1393a c1393a = dVar.f1321i;
        if (c1393a != null) {
            int b4 = c1393a.b();
            byte[] bArr3 = new byte[b4];
            try {
                U2.a aVar = new U2.a(bArr3, b4);
                s1.b[] bVarArr = c1393a.f12282b;
                if (bVarArr != null && bVarArr.length > 0) {
                    while (true) {
                        s1.b[] bVarArr2 = c1393a.f12282b;
                        if (i4 >= bVarArr2.length) {
                            break;
                        }
                        s1.b bVar = bVarArr2[i4];
                        if (bVar != null) {
                            aVar.d(10);
                            if (bVar.f1777a < 0) {
                                bVar.b();
                            }
                            aVar.d(bVar.f1777a);
                            int i6 = bVar.f12284b;
                            if (i6 != 0) {
                                aVar.b(1, i6);
                            }
                            int i7 = bVar.f12285c;
                            if (i7 != 0) {
                                aVar.b(2, i7);
                            }
                        }
                        i4++;
                    }
                }
                if (aVar.f1775a.remaining() != 0) {
                    throw new IllegalStateException("Did not write as much data as expected.");
                }
                bArr2 = bArr3;
            } catch (IOException e4) {
                throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e4);
            }
        } else {
            bArr2 = null;
        }
        BcSmartspaceEvent bcSmartspaceEvent = (BcSmartspaceEvent) g4;
        SysUiStatsLog.write(SysUiStatsLog.SMARTSPACE_CARD_REPORTED, bcSmartspaceEvent.a(), dVar.f1313a, 0, dVar.f1314b, dVar.f1315c, dVar.f1316d, dVar.f1317e, dVar.f1319g, 0, 0, dVar.f1318f, bArr, bArr2);
        if (f1303a) {
            Log.d("StatsLog", String.format("\nLogged Smartspace event(%s), info(%s), callers=%s", bcSmartspaceEvent, dVar.toString(), Debug.getCallers(5)));
        }
    }
}
