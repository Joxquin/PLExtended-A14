package m0;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* renamed from: m0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1302c {

    /* renamed from: a  reason: collision with root package name */
    public final List f11601a = new ArrayList();

    public final void a(Path path) {
        ArrayList arrayList = (ArrayList) this.f11601a;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            v vVar = (v) arrayList.get(size);
            w0.g gVar = w0.h.f12735a;
            if (vVar != null && !vVar.f11721a) {
                w0.h.a(vVar.f11724d.l() / 100.0f, vVar.f11725e.l() / 100.0f, vVar.f11726f.l() / 360.0f, path);
            }
        }
    }
}
