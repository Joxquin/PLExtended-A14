package b2;

import K2.A;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.animation.Interpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.PendingAnimation;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.v;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import kotlin.collections.o;
/* loaded from: classes.dex */
public final class f implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4226a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4227b;

    public /* synthetic */ f(int i4, Object obj) {
        this.f4226a = i4;
        this.f4227b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i4;
        switch (this.f4226a) {
            case 0:
                Boolean bool = (Boolean) obj;
                for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : (List) this.f4227b) {
                    shortcutAndWidgetContainer.setClipChildren(true);
                }
                return;
            default:
                PendingAnimation p02 = (PendingAnimation) obj;
                kotlin.jvm.internal.h.e(p02, "p0");
                h hVar = (h) this.f4227b;
                v vVar = v.f7624a;
                NexusLauncherActivity nexusLauncherActivity = hVar.f4229a;
                Workspace workspace = nexusLauncherActivity.getWorkspace();
                kotlin.jvm.internal.h.d(workspace, "launcher.workspace");
                List c4 = v.c(workspace);
                vVar.b(p02, c4, nexusLauncherActivity.getWorkspace().getHotseat(), hVar.f4229a, hVar.f4232d, ((float) hVar.f4235g) / ((float) hVar.f4236h));
                if (hVar.f4232d) {
                    Rect rect = new Rect();
                    BcSmartspaceView bcSmartspaceView = hVar.f4230b;
                    bcSmartspaceView.getBoundsOnScreen(rect);
                    A a4 = (A) bcSmartspaceView.f8341r.f916d.get(bcSmartspaceView.f8331h.f10679i);
                    if ((a4 != null ? a4.f909b : null) != null) {
                        A a5 = (A) bcSmartspaceView.f8341r.f916d.get(bcSmartspaceView.f8331h.f10679i);
                        i4 = (a5 != null ? a5.f909b : null).getPaddingTop();
                    } else {
                        A a6 = (A) bcSmartspaceView.f8341r.f916d.get(bcSmartspaceView.f8331h.f10679i);
                        if ((a6 != null ? a6.f911d : null) != null) {
                            A a7 = (A) bcSmartspaceView.f8341r.f916d.get(bcSmartspaceView.f8331h.f10679i);
                            i4 = (a7 != null ? a7.f911d : null).getPaddingTop();
                        } else {
                            i4 = 0;
                        }
                    }
                    rect.offset(0, i4);
                    ArrayList arrayList = new ArrayList(o.d(c4));
                    Iterator it = ((ArrayList) c4).iterator();
                    while (it.hasNext()) {
                        arrayList.add(((CellLayout) it.next()).getShortcutsAndWidgets());
                    }
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        Object next = it2.next();
                        if (((ShortcutAndWidgetContainer) next).getClipChildren()) {
                            arrayList2.add(next);
                        }
                    }
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        ((ShortcutAndWidgetContainer) it3.next()).setClipChildren(false);
                    }
                    p02.addEndListener(new f(0, arrayList2));
                    BcSmartspaceView bcSmartspaceView2 = hVar.f4230b;
                    FloatProperty floatProperty = LauncherAnimUtils.VIEW_TRANSLATE_X;
                    Rect rect2 = hVar.f4233e;
                    Interpolator interpolator = y0.e.f12937a;
                    p02.addFloat(bcSmartspaceView2, floatProperty, rect2.left - rect.left, 0.0f, interpolator);
                    p02.addFloat(hVar.f4230b, LauncherAnimUtils.VIEW_TRANSLATE_Y, rect2.top - rect.top, 0.0f, interpolator);
                }
                p02.addEndListener(g.f4228a);
                return;
        }
    }
}
