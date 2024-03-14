package com.google.android.apps.nexuslauncher;

import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Hotseat;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.util.IntSet;
import com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f7624a = new v();

    public static final void a(ViewGroup viewGroup, RingAppearAnimation$VirtualPage ringAppearAnimation$VirtualPage, float[] fArr, ArrayList arrayList, boolean z4, HashSet hashSet, int i4, int i5) {
        boolean z5;
        boolean z6;
        boolean z7;
        int i6 = ringAppearAnimation$VirtualPage.f6490d;
        int i7 = i4 / i6;
        int i8 = i4 % i6;
        List list = ringAppearAnimation$VirtualPage.f6487a;
        kotlin.jvm.internal.h.e(list, "<this>");
        CellLayout cellLayout = (CellLayout) ((i7 < 0 || i7 > kotlin.collections.n.a(list)) ? null : list.get(i7));
        View childAt = cellLayout != null ? cellLayout.getChildAt(i8, i5) : null;
        if (childAt != null) {
            if (!(hashSet instanceof Collection) || !hashSet.isEmpty()) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    if (kotlin.jvm.internal.h.a(((RingAppearAnimation$ViewWithPivot) it.next()).f6484a, childAt)) {
                        z5 = false;
                        break;
                    }
                }
            }
            z5 = true;
            if (z5) {
                if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        HashSet<RingAppearAnimation$ViewWithPivot> hashSet2 = (HashSet) it2.next();
                        if (!(hashSet2 instanceof Collection) || !hashSet2.isEmpty()) {
                            for (RingAppearAnimation$ViewWithPivot ringAppearAnimation$ViewWithPivot : hashSet2) {
                                if (kotlin.jvm.internal.h.a(ringAppearAnimation$ViewWithPivot.f6484a, childAt)) {
                                    z6 = true;
                                    continue;
                                    break;
                                }
                            }
                        }
                        z6 = false;
                        continue;
                        if (z6) {
                            z7 = true;
                            break;
                        }
                    }
                }
                z7 = false;
                if (z7) {
                    return;
                }
                if ((z4 && (childAt instanceof SmartspaceViewContainer)) ? false : true) {
                    float[] fArr2 = (float[]) fArr.clone();
                    Utilities.mapCoordInSelfToDescendant(childAt, viewGroup, fArr2);
                    hashSet.add(new RingAppearAnimation$ViewWithPivot(childAt, fArr2[0], fArr2[1]));
                }
            }
        }
    }

    public static List c(Workspace workspace) {
        IntSet visiblePageIndices = workspace.getVisiblePageIndices();
        kotlin.jvm.internal.h.d(visiblePageIndices, "workspace.visiblePageIndices");
        ArrayList arrayList = new ArrayList(kotlin.collections.o.d(visiblePageIndices));
        Iterator it = visiblePageIndices.iterator();
        while (it.hasNext()) {
            Integer pageIndex = (Integer) it.next();
            kotlin.jvm.internal.h.d(pageIndex, "pageIndex");
            View pageAt = workspace.getPageAt(pageIndex.intValue());
            kotlin.jvm.internal.h.c(pageAt, "null cannot be cast to non-null type com.android.launcher3.CellLayout");
            arrayList.add((CellLayout) pageAt);
        }
        return arrayList;
    }

    public final void b(PendingAnimation outPI, List list, Hotseat hotseat, NexusLauncherActivity launcher, boolean z4, float f4) {
        ArrayList arrayList;
        int i4;
        CellLayout cellLayout;
        kotlin.jvm.internal.h.e(outPI, "outPI");
        kotlin.jvm.internal.h.e(launcher, "launcher");
        LauncherRootView rootView = launcher.getRootView();
        kotlin.jvm.internal.h.d(rootView, "launcher.rootView");
        Iterator it = ((ArrayList) list).iterator();
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (true) {
            i4 = 0;
            if (!it.hasNext()) {
                break;
            }
            float[] fArr = {cellLayout.getShortcutsAndWidgets().getWidth() / 2.0f, cellLayout.getShortcutsAndWidgets().getHeight() / 2.0f};
            Utilities.getDescendantCoordRelativeToAncestor((CellLayout) it.next(), rootView, fArr, true, false);
            f5 += fArr[0];
            f6 += fArr[1];
        }
        for (Object obj : buildViewRingsWithPivots(list, hotseat, rootView, z4, new float[]{f5 / arrayList.size(), f6 / arrayList.size()})) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            float a4 = w.f.a(1.0f, f4, i4 * 0.08f, f4);
            TimeInterpolator b4 = y0.e.b(a4, w.f.a(1.0f, a4, 0.25f, a4), y0.e.f12949m);
            TimeInterpolator b5 = y0.e.b(a4, 1.0f, y0.e.f12939c);
            for (RingAppearAnimation$ViewWithPivot ringAppearAnimation$ViewWithPivot : (HashSet) obj) {
                outPI.addFloat(ringAppearAnimation$ViewWithPivot.f6484a, LauncherAnimUtils.VIEW_ALPHA, 0.0f, 1.0f, b4);
                outPI.addFloat(ringAppearAnimation$ViewWithPivot.f6484a, LauncherAnimUtils.SCALE_PROPERTY, 0.65f, 1.0f, b5);
                FloatProperty floatProperty = LauncherAnimUtils.VIEW_TRANSLATE_X;
                View view = ringAppearAnimation$ViewWithPivot.f6484a;
                outPI.addFloat(view, floatProperty, (ringAppearAnimation$ViewWithPivot.f6485b - view.getPivotX()) * 0.35000002f, 0.0f, b5);
                outPI.addFloat(view, LauncherAnimUtils.VIEW_TRANSLATE_Y, (ringAppearAnimation$ViewWithPivot.f6486c - view.getPivotY()) * 0.35000002f, 0.0f, b5);
            }
            i4 = i5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0081 A[LOOP:0: B:14:0x007e->B:16:0x0081, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5 A[LOOP:2: B:26:0x00b5->B:38:0x00fe, LOOP_START, PHI: r10 
      PHI: (r10v13 int) = (r10v11 int), (r10v14 int) binds: [B:25:0x00b3, B:38:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList buildViewRingsWithPivots(java.util.List r10, android.view.View r11, final android.view.ViewGroup r12, final boolean r13, final float[] r14) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.v.buildViewRingsWithPivots(java.util.List, android.view.View, android.view.ViewGroup, boolean, float[]):java.util.ArrayList");
    }
}
