package O;

import android.view.View;
import androidx.core.view.L;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.n;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class a {
    public static final void a(View view) {
        h.e(view, "<this>");
        Iterator it = L.a(view).iterator();
        while (true) {
            kotlin.sequences.h hVar = (kotlin.sequences.h) it;
            if (!hVar.hasNext()) {
                return;
            }
            View view2 = (View) hVar.next();
            c cVar = (c) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (cVar == null) {
                cVar = new c();
                view2.setTag(R.id.pooling_container_listener_holder_tag, cVar);
            }
            ArrayList arrayList = cVar.f1413a;
            for (int a4 = n.a(arrayList); -1 < a4; a4--) {
                ((b) arrayList.get(a4)).a();
            }
        }
    }
}
