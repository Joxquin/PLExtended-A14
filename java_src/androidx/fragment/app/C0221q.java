package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.view.ViewTreeObserver$OnPreDrawListenerC0181s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Pair;
import q.C1350a;
import q.C1353d;
import q.C1355f;
/* renamed from: androidx.fragment.app.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0221q extends U0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0221q(ViewGroup container) {
        super(container);
        kotlin.jvm.internal.h.e(container, "container");
    }

    public static void m(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            if (childAt.getVisibility() == 0) {
                m(childAt, arrayList);
            }
        }
    }

    public static void n(C1355f c1355f, View view) {
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        String e4 = androidx.core.view.D.e(view);
        if (e4 != null) {
            c1355f.put(e4, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt.getVisibility() == 0) {
                    n(c1355f, childAt);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v61, types: [java.lang.Object] */
    @Override // androidx.fragment.app.U0
    public final void f(List list, final boolean z4) {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State;
        String str;
        Object obj;
        ?? r32;
        String str2;
        ArrayList arrayList;
        List list2;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2;
        LinkedHashMap linkedHashMap;
        ViewGroup viewGroup;
        S0 s02;
        String str3;
        S0 s03;
        S0 s04;
        boolean z5;
        S0 s05;
        C1355f c1355f;
        S0 s06;
        View view;
        View view2;
        String str4;
        C1355f c1355f2;
        View view3;
        View view4;
        Object j4;
        ArrayList arrayList2;
        String str5;
        String str6;
        J0 j02;
        Rect rect;
        LinkedHashMap linkedHashMap2;
        ViewGroup viewGroup2;
        ArrayList arrayList3;
        Object obj2;
        View view5;
        final C0221q c0221q;
        final S0 s07;
        C0215n c0215n;
        boolean z6;
        boolean z7;
        ArrayList arrayList4 = (ArrayList) list;
        Iterator it = arrayList4.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
            str = "operation.fragment.mView";
            if (!hasNext) {
                obj = null;
                break;
            }
            obj = it.next();
            S0 s08 = (S0) obj;
            View view6 = s08.f3334c.mView;
            kotlin.jvm.internal.h.d(view6, "operation.fragment.mView");
            if (P0.a(view6) != specialEffectsController$Operation$State || s08.f3332a == specialEffectsController$Operation$State) {
                z7 = false;
                continue;
            } else {
                z7 = true;
                continue;
            }
            if (z7) {
                break;
            }
        }
        final S0 s09 = (S0) obj;
        ListIterator listIterator = arrayList4.listIterator(arrayList4.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                r32 = 0;
                break;
            }
            r32 = listIterator.previous();
            S0 s010 = (S0) r32;
            View view7 = s010.f3334c.mView;
            kotlin.jvm.internal.h.d(view7, "operation.fragment.mView");
            if (P0.a(view7) == specialEffectsController$Operation$State || s010.f3332a != specialEffectsController$Operation$State) {
                z6 = false;
                continue;
            } else {
                z6 = true;
                continue;
            }
            if (z6) {
                break;
            }
        }
        final S0 s011 = r32;
        String str7 = "FragmentManager";
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "Executing operations from " + s09 + " to " + s011);
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        List l4 = kotlin.collections.s.l(list);
        if (arrayList4.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        K k4 = ((S0) arrayList4.get(kotlin.collections.n.a(list))).f3334c;
        Iterator it2 = arrayList4.iterator();
        while (it2.hasNext()) {
            G g4 = ((S0) it2.next()).f3334c.mAnimationInfo;
            G g5 = k4.mAnimationInfo;
            g4.f3270b = g5.f3270b;
            g4.f3271c = g5.f3271c;
            g4.f3272d = g5.f3272d;
            g4.f3273e = g5.f3273e;
        }
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            S0 s012 = (S0) it3.next();
            I.d dVar = new I.d();
            s012.d();
            s012.f3336e.add(dVar);
            arrayList5.add(new C0211l(s012, dVar, z4));
            I.d dVar2 = new I.d();
            s012.d();
            s012.f3336e.add(dVar2);
            arrayList6.add(new C0215n(s012, dVar2, z4, !z4 ? s012 != s011 : s012 != s09));
            ((ArrayList) s012.f3335d).add(new RunnableC0199f(l4, s012, this, 0));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        ArrayList arrayList7 = new ArrayList();
        Iterator it4 = arrayList6.iterator();
        while (it4.hasNext()) {
            Object next = it4.next();
            if (!((C0215n) next).b()) {
                arrayList7.add(next);
            }
        }
        ArrayList arrayList8 = new ArrayList();
        Iterator it5 = arrayList7.iterator();
        while (it5.hasNext()) {
            Object next2 = it5.next();
            if (((C0215n) next2).c() != null) {
                arrayList8.add(next2);
            }
        }
        Iterator it6 = arrayList8.iterator();
        J0 j03 = null;
        while (it6.hasNext()) {
            J0 c4 = ((C0215n) it6.next()).c();
            if (!(j03 == null || c4 == j03)) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c0215n.f3431a.f3334c + " returned Transition " + c0215n.f3435c + " which uses a different Transition type than other Fragments.").toString());
            }
            j03 = c4;
        }
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State3 = SpecialEffectsController$Operation$State.GONE;
        ViewGroup viewGroup3 = this.f3349a;
        if (j03 == null) {
            Iterator it7 = arrayList6.iterator();
            while (it7.hasNext()) {
                C0215n c0215n2 = (C0215n) it7.next();
                linkedHashMap3.put(c0215n2.f3431a, Boolean.FALSE);
                c0215n2.a();
            }
            arrayList = arrayList5;
            specialEffectsController$Operation$State2 = specialEffectsController$Operation$State3;
            s04 = s09;
            s03 = s011;
            str2 = " to ";
            str3 = "FragmentManager";
            list2 = l4;
            z5 = false;
            linkedHashMap = linkedHashMap3;
            viewGroup = viewGroup3;
        } else {
            str2 = " to ";
            View view8 = new View(viewGroup3.getContext());
            Rect rect2 = new Rect();
            ArrayList arrayList9 = new ArrayList();
            arrayList = arrayList5;
            ArrayList arrayList10 = new ArrayList();
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State4 = specialEffectsController$Operation$State;
            C1355f c1355f3 = new C1355f();
            Iterator it8 = arrayList6.iterator();
            boolean z8 = z4;
            list2 = l4;
            Object obj3 = null;
            boolean z9 = false;
            View view9 = null;
            while (it8.hasNext()) {
                SpecialEffectsController$Operation$State specialEffectsController$Operation$State5 = specialEffectsController$Operation$State3;
                Object obj4 = ((C0215n) it8.next()).f3437e;
                if (!(obj4 != null) || s09 == null || s011 == null) {
                    arrayList2 = arrayList6;
                    str5 = str;
                    str6 = str7;
                    ViewGroup viewGroup4 = viewGroup3;
                    j02 = j03;
                    rect = rect2;
                    linkedHashMap2 = linkedHashMap3;
                    viewGroup2 = viewGroup4;
                } else {
                    Object r4 = j03.r(j03.f(obj4));
                    K k5 = s011.f3334c;
                    str5 = str;
                    ArrayList sharedElementSourceNames = k5.getSharedElementSourceNames();
                    arrayList2 = arrayList6;
                    kotlin.jvm.internal.h.d(sharedElementSourceNames, "lastIn.fragment.sharedElementSourceNames");
                    K k6 = s09.f3334c;
                    LinkedHashMap linkedHashMap4 = linkedHashMap3;
                    ArrayList sharedElementSourceNames2 = k6.getSharedElementSourceNames();
                    View view10 = view8;
                    kotlin.jvm.internal.h.d(sharedElementSourceNames2, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList sharedElementTargetNames = k6.getSharedElementTargetNames();
                    Rect rect3 = rect2;
                    kotlin.jvm.internal.h.d(sharedElementTargetNames, "firstOut.fragment.sharedElementTargetNames");
                    int size = sharedElementTargetNames.size();
                    J0 j04 = j03;
                    int i4 = 0;
                    while (i4 < size) {
                        int i5 = size;
                        int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i4));
                        if (indexOf != -1) {
                            sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i4));
                        }
                        i4++;
                        size = i5;
                    }
                    ArrayList sharedElementTargetNames2 = k5.getSharedElementTargetNames();
                    kotlin.jvm.internal.h.d(sharedElementTargetNames2, "lastIn.fragment.sharedElementTargetNames");
                    Pair pair = !z8 ? new Pair(k6.getExitTransitionCallback(), k5.getEnterTransitionCallback()) : new Pair(k6.getEnterTransitionCallback(), k5.getExitTransitionCallback());
                    B.l lVar = (B.l) pair.a();
                    B.l lVar2 = (B.l) pair.b();
                    int size2 = sharedElementSourceNames.size();
                    int i6 = 0;
                    while (i6 < size2) {
                        c1355f3.put((String) sharedElementSourceNames.get(i6), (String) sharedElementTargetNames2.get(i6));
                        i6++;
                        size2 = size2;
                        viewGroup3 = viewGroup3;
                    }
                    ViewGroup viewGroup5 = viewGroup3;
                    if (AbstractC0220p0.H(2)) {
                        Log.v(str7, ">>> entering view names <<<");
                        for (Iterator it9 = sharedElementTargetNames2.iterator(); it9.hasNext(); it9 = it9) {
                            Log.v(str7, "Name: " + ((String) it9.next()));
                        }
                        Log.v(str7, ">>> exiting view names <<<");
                        for (Iterator it10 = sharedElementSourceNames.iterator(); it10.hasNext(); it10 = it10) {
                            Log.v(str7, "Name: " + ((String) it10.next()));
                        }
                    }
                    C1355f c1355f4 = new C1355f();
                    View view11 = k6.mView;
                    kotlin.jvm.internal.h.d(view11, "firstOut.fragment.mView");
                    n(c1355f4, view11);
                    c1355f4.m(sharedElementSourceNames);
                    if (lVar != null) {
                        if (AbstractC0220p0.H(2)) {
                            Log.v(str7, "Executing exit callback for operation " + s09);
                        }
                        int size3 = sharedElementSourceNames.size() - 1;
                        if (size3 >= 0) {
                            while (true) {
                                int i7 = size3 - 1;
                                String str8 = (String) sharedElementSourceNames.get(size3);
                                View view12 = (View) c1355f4.get(str8);
                                if (view12 == null) {
                                    c1355f3.remove(str8);
                                    arrayList3 = sharedElementSourceNames;
                                } else {
                                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                                    arrayList3 = sharedElementSourceNames;
                                    if (!kotlin.jvm.internal.h.a(str8, androidx.core.view.D.e(view12))) {
                                        c1355f3.put(androidx.core.view.D.e(view12), (String) c1355f3.remove(str8));
                                    }
                                }
                                if (i7 < 0) {
                                    break;
                                }
                                size3 = i7;
                                sharedElementSourceNames = arrayList3;
                            }
                        } else {
                            arrayList3 = sharedElementSourceNames;
                        }
                    } else {
                        arrayList3 = sharedElementSourceNames;
                        c1355f3.m(c1355f4.keySet());
                    }
                    final C1355f c1355f5 = new C1355f();
                    View view13 = k5.mView;
                    kotlin.jvm.internal.h.d(view13, "lastIn.fragment.mView");
                    n(c1355f5, view13);
                    c1355f5.m(sharedElementTargetNames2);
                    c1355f5.m(c1355f3.values());
                    if (lVar2 != null) {
                        if (AbstractC0220p0.H(2)) {
                            Log.v(str7, "Executing enter callback for operation " + s011);
                        }
                        int size4 = sharedElementTargetNames2.size() - 1;
                        if (size4 >= 0) {
                            while (true) {
                                int i8 = size4 - 1;
                                String name = (String) sharedElementTargetNames2.get(size4);
                                View view14 = (View) c1355f5.get(name);
                                if (view14 == null) {
                                    kotlin.jvm.internal.h.d(name, "name");
                                    String b4 = C0.b(c1355f3, name);
                                    if (b4 != null) {
                                        c1355f3.remove(b4);
                                    }
                                    str6 = str7;
                                } else {
                                    WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
                                    str6 = str7;
                                    if (!kotlin.jvm.internal.h.a(name, androidx.core.view.D.e(view14))) {
                                        kotlin.jvm.internal.h.d(name, "name");
                                        String b5 = C0.b(c1355f3, name);
                                        if (b5 != null) {
                                            c1355f3.put(b5, androidx.core.view.D.e(view14));
                                        }
                                    }
                                }
                                if (i8 < 0) {
                                    break;
                                }
                                size4 = i8;
                                str7 = str6;
                            }
                        } else {
                            str6 = str7;
                        }
                    } else {
                        str6 = str7;
                        H0 h02 = C0.f3244a;
                        for (int i9 = c1355f3.f11967f - 1; -1 < i9; i9--) {
                            if (!c1355f5.containsKey((String) c1355f3.j(i9))) {
                                c1355f3.h(i9);
                            }
                        }
                    }
                    final Set keySet = c1355f3.keySet();
                    Set entrySet = c1355f4.entrySet();
                    m3.l lVar3 = new m3.l() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // m3.l
                        public final Object invoke(Object obj5) {
                            Map.Entry entry = (Map.Entry) obj5;
                            kotlin.jvm.internal.h.e(entry, "entry");
                            Collection collection = keySet;
                            WeakHashMap weakHashMap3 = androidx.core.view.J.f3079a;
                            return Boolean.valueOf(kotlin.collections.s.f(collection, androidx.core.view.D.e((View) entry.getValue())));
                        }
                    };
                    Iterator it11 = ((C1350a) entrySet).iterator();
                    while (true) {
                        C1353d c1353d = (C1353d) it11;
                        if (!c1353d.hasNext()) {
                            break;
                        }
                        c1353d.next();
                        if (!((Boolean) lVar3.invoke(c1353d)).booleanValue()) {
                            c1353d.remove();
                        }
                    }
                    final Collection values = c1355f3.values();
                    Set entrySet2 = c1355f5.entrySet();
                    m3.l lVar4 = new m3.l() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // m3.l
                        public final Object invoke(Object obj5) {
                            Map.Entry entry = (Map.Entry) obj5;
                            kotlin.jvm.internal.h.e(entry, "entry");
                            Collection collection = values;
                            WeakHashMap weakHashMap3 = androidx.core.view.J.f3079a;
                            return Boolean.valueOf(kotlin.collections.s.f(collection, androidx.core.view.D.e((View) entry.getValue())));
                        }
                    };
                    Iterator it12 = ((C1350a) entrySet2).iterator();
                    while (true) {
                        C1353d c1353d2 = (C1353d) it12;
                        if (!c1353d2.hasNext()) {
                            break;
                        }
                        c1353d2.next();
                        if (!((Boolean) lVar4.invoke(c1353d2)).booleanValue()) {
                            c1353d2.remove();
                        }
                    }
                    if (c1355f3.isEmpty()) {
                        arrayList9.clear();
                        arrayList10.clear();
                        specialEffectsController$Operation$State3 = specialEffectsController$Operation$State5;
                        z8 = z4;
                        str = str5;
                        arrayList6 = arrayList2;
                        linkedHashMap3 = linkedHashMap4;
                        view8 = view10;
                        rect2 = rect3;
                        j03 = j04;
                        viewGroup3 = viewGroup5;
                        str7 = str6;
                        obj3 = null;
                    } else {
                        C0.a(k5, k6, z4, c1355f4);
                        viewGroup2 = viewGroup5;
                        ViewTreeObserver$OnPreDrawListenerC0181s.a(viewGroup2, new Runnable() { // from class: androidx.fragment.app.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                S0 s013 = S0.this;
                                S0 s014 = s09;
                                boolean z10 = z4;
                                C1355f lastInViews = c1355f5;
                                kotlin.jvm.internal.h.e(lastInViews, "$lastInViews");
                                C0.a(s013.f3334c, s014.f3334c, z10, lastInViews);
                            }
                        });
                        arrayList9.addAll(c1355f4.values());
                        if (!arrayList3.isEmpty()) {
                            View view15 = (View) c1355f4.get((String) arrayList3.get(0));
                            j02 = j04;
                            obj2 = r4;
                            j02.m(view15, obj2);
                            view9 = view15;
                        } else {
                            j02 = j04;
                            obj2 = r4;
                        }
                        arrayList10.addAll(c1355f5.values());
                        if (!(!sharedElementTargetNames2.isEmpty()) || (view5 = (View) c1355f5.get((String) sharedElementTargetNames2.get(0))) == null) {
                            rect = rect3;
                        } else {
                            rect = rect3;
                            ViewTreeObserver$OnPreDrawListenerC0181s.a(viewGroup2, new RunnableC0199f(j02, view5, rect, 1));
                            z9 = true;
                        }
                        view8 = view10;
                        j02.p(obj2, view8, arrayList9);
                        j02.l(obj2, null, null, obj2, arrayList10);
                        Boolean bool = Boolean.TRUE;
                        linkedHashMap2 = linkedHashMap4;
                        linkedHashMap2.put(s09, bool);
                        linkedHashMap2.put(s011, bool);
                        z8 = z4;
                        obj3 = obj2;
                    }
                }
                specialEffectsController$Operation$State3 = specialEffectsController$Operation$State5;
                str = str5;
                arrayList6 = arrayList2;
                str7 = str6;
                LinkedHashMap linkedHashMap5 = linkedHashMap2;
                rect2 = rect;
                j03 = j02;
                viewGroup3 = viewGroup2;
                linkedHashMap3 = linkedHashMap5;
            }
            ArrayList arrayList11 = arrayList6;
            specialEffectsController$Operation$State2 = specialEffectsController$Operation$State3;
            String str9 = str;
            String str10 = str7;
            ViewGroup viewGroup6 = viewGroup3;
            J0 j05 = j03;
            Rect rect4 = rect2;
            linkedHashMap = linkedHashMap3;
            viewGroup = viewGroup6;
            ArrayList arrayList12 = new ArrayList();
            Iterator it13 = arrayList11.iterator();
            Object obj5 = null;
            Object obj6 = null;
            while (it13.hasNext()) {
                C0215n c0215n3 = (C0215n) it13.next();
                boolean b6 = c0215n3.b();
                Iterator it14 = it13;
                S0 s013 = c0215n3.f3431a;
                if (b6) {
                    c1355f2 = c1355f3;
                    linkedHashMap.put(s013, Boolean.FALSE);
                    c0215n3.a();
                } else {
                    c1355f2 = c1355f3;
                    Object f4 = j05.f(c0215n3.f3435c);
                    boolean z10 = obj3 != null && (s013 == s09 || s013 == s011);
                    if (f4 != null) {
                        S0 s014 = s011;
                        final ArrayList arrayList13 = new ArrayList();
                        Object obj7 = obj3;
                        View view16 = s013.f3334c.mView;
                        Object obj8 = obj6;
                        String str11 = str9;
                        kotlin.jvm.internal.h.d(view16, str11);
                        m(view16, arrayList13);
                        if (z10) {
                            if (s013 == s09) {
                                arrayList13.removeAll(kotlin.collections.s.n(arrayList9));
                            } else {
                                arrayList13.removeAll(kotlin.collections.s.n(arrayList10));
                            }
                        }
                        if (arrayList13.isEmpty()) {
                            j05.a(view8, f4);
                            view3 = view8;
                            str9 = str11;
                        } else {
                            j05.b(f4, arrayList13);
                            j05.l(f4, f4, arrayList13, null, null);
                            str9 = str11;
                            SpecialEffectsController$Operation$State specialEffectsController$Operation$State6 = specialEffectsController$Operation$State2;
                            if (s013.f3332a == specialEffectsController$Operation$State6) {
                                ((ArrayList) list2).remove(s013);
                                ArrayList arrayList14 = new ArrayList(arrayList13);
                                view3 = view8;
                                K k7 = s013.f3334c;
                                specialEffectsController$Operation$State2 = specialEffectsController$Operation$State6;
                                arrayList14.remove(k7.mView);
                                j05.k(f4, k7.mView, arrayList14);
                                ViewTreeObserver$OnPreDrawListenerC0181s.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.h
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ArrayList transitioningViews = arrayList13;
                                        kotlin.jvm.internal.h.e(transitioningViews, "$transitioningViews");
                                        C0.c(4, transitioningViews);
                                    }
                                });
                            } else {
                                view3 = view8;
                                specialEffectsController$Operation$State2 = specialEffectsController$Operation$State6;
                            }
                        }
                        SpecialEffectsController$Operation$State specialEffectsController$Operation$State7 = specialEffectsController$Operation$State4;
                        if (s013.f3332a == specialEffectsController$Operation$State7) {
                            arrayList12.addAll(arrayList13);
                            if (z9) {
                                j05.n(f4, rect4);
                            }
                            view4 = view9;
                        } else {
                            view4 = view9;
                            j05.m(view4, f4);
                        }
                        linkedHashMap.put(s013, Boolean.TRUE);
                        if (c0215n3.f3436d) {
                            obj5 = j05.j(obj5, f4);
                            j4 = obj8;
                        } else {
                            j4 = j05.j(obj8, f4);
                        }
                        view9 = view4;
                        specialEffectsController$Operation$State4 = specialEffectsController$Operation$State7;
                        c1355f3 = c1355f2;
                        view8 = view3;
                        s011 = s014;
                        obj3 = obj7;
                        obj6 = j4;
                        it13 = it14;
                    } else if (!z10) {
                        linkedHashMap.put(s013, Boolean.FALSE);
                        c0215n3.a();
                    }
                }
                it13 = it14;
                c1355f3 = c1355f2;
            }
            C1355f c1355f6 = c1355f3;
            S0 s015 = s011;
            Object i10 = j05.i(obj5, obj6, obj3);
            if (i10 == null) {
                s02 = s015;
                str3 = str10;
            } else {
                ArrayList arrayList15 = new ArrayList();
                Iterator it15 = arrayList11.iterator();
                while (it15.hasNext()) {
                    Object next3 = it15.next();
                    if (!((C0215n) next3).b()) {
                        arrayList15.add(next3);
                    }
                }
                Iterator it16 = arrayList15.iterator();
                while (it16.hasNext()) {
                    C0215n c0215n4 = (C0215n) it16.next();
                    Object obj9 = c0215n4.f3435c;
                    S0 s016 = c0215n4.f3431a;
                    S0 s017 = s015;
                    boolean z11 = obj3 != null && (s016 == s09 || s016 == s017);
                    if (obj9 != null || z11) {
                        WeakHashMap weakHashMap3 = androidx.core.view.J.f3079a;
                        if (androidx.core.view.A.c(viewGroup)) {
                            str4 = str10;
                            K k8 = s016.f3334c;
                            j05.o(i10, c0215n4.f3432b, new RunnableC0205i(c0215n4, s016));
                        } else {
                            if (AbstractC0220p0.H(2)) {
                                str4 = str10;
                                Log.v(str4, "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Completing operation " + s016);
                            } else {
                                str4 = str10;
                            }
                            c0215n4.a();
                        }
                    } else {
                        str4 = str10;
                    }
                    s015 = s017;
                    str10 = str4;
                }
                s02 = s015;
                str3 = str10;
                WeakHashMap weakHashMap4 = androidx.core.view.J.f3079a;
                if (androidx.core.view.A.c(viewGroup)) {
                    C0.c(4, arrayList12);
                    ArrayList arrayList16 = new ArrayList();
                    int size5 = arrayList10.size();
                    for (int i11 = 0; i11 < size5; i11++) {
                        View view17 = (View) arrayList10.get(i11);
                        WeakHashMap weakHashMap5 = androidx.core.view.J.f3079a;
                        arrayList16.add(androidx.core.view.D.e(view17));
                        androidx.core.view.D.m(view17, null);
                    }
                    if (AbstractC0220p0.H(2)) {
                        Log.v(str3, ">>>>> Beginning transition <<<<<");
                        Log.v(str3, ">>>>> SharedElementFirstOutViews <<<<<");
                        for (Iterator it17 = arrayList9.iterator(); it17.hasNext(); it17 = it17) {
                            Object sharedElementFirstOutViews = it17.next();
                            kotlin.jvm.internal.h.d(sharedElementFirstOutViews, "sharedElementFirstOutViews");
                            Log.v(str3, "View: " + ((View) sharedElementFirstOutViews) + " Name: " + androidx.core.view.D.e(view2));
                        }
                        Log.v(str3, ">>>>> SharedElementLastInViews <<<<<");
                        for (Iterator it18 = arrayList10.iterator(); it18.hasNext(); it18 = it18) {
                            Object sharedElementLastInViews = it18.next();
                            kotlin.jvm.internal.h.d(sharedElementLastInViews, "sharedElementLastInViews");
                            Log.v(str3, "View: " + ((View) sharedElementLastInViews) + " Name: " + androidx.core.view.D.e(view));
                        }
                    }
                    j05.c(viewGroup, i10);
                    int size6 = arrayList10.size();
                    ArrayList arrayList17 = new ArrayList();
                    int i12 = 0;
                    while (i12 < size6) {
                        View view18 = (View) arrayList9.get(i12);
                        WeakHashMap weakHashMap6 = androidx.core.view.J.f3079a;
                        String e4 = androidx.core.view.D.e(view18);
                        arrayList17.add(e4);
                        if (e4 == null) {
                            s05 = s02;
                            s06 = s09;
                            c1355f = c1355f6;
                        } else {
                            s05 = s02;
                            androidx.core.view.D.m(view18, null);
                            C1355f c1355f7 = c1355f6;
                            String str12 = (String) c1355f7.get(e4);
                            c1355f = c1355f7;
                            int i13 = 0;
                            while (true) {
                                s06 = s09;
                                if (i13 >= size6) {
                                    break;
                                } else if (str12.equals(arrayList16.get(i13))) {
                                    androidx.core.view.D.m((View) arrayList10.get(i13), e4);
                                    break;
                                } else {
                                    i13++;
                                    s09 = s06;
                                }
                            }
                        }
                        i12++;
                        c1355f6 = c1355f;
                        s09 = s06;
                        s02 = s05;
                    }
                    s03 = s02;
                    s04 = s09;
                    ViewTreeObserver$OnPreDrawListenerC0181s.a(viewGroup, new I0(size6, arrayList10, arrayList16, arrayList9, arrayList17));
                    z5 = false;
                    C0.c(0, arrayList12);
                    j05.q(obj3, arrayList9, arrayList10);
                }
            }
            s03 = s02;
            s04 = s09;
            z5 = false;
        }
        boolean containsValue = linkedHashMap.containsValue(Boolean.TRUE);
        Context context = viewGroup.getContext();
        ArrayList arrayList18 = new ArrayList();
        Iterator it19 = arrayList.iterator();
        boolean z12 = z5;
        while (it19.hasNext()) {
            C0211l c0211l = (C0211l) it19.next();
            if (c0211l.b()) {
                c0211l.a();
            } else {
                kotlin.jvm.internal.h.d(context, "context");
                Q c5 = c0211l.c(context);
                if (c5 == null) {
                    c0211l.a();
                } else {
                    final Animator animator = c5.f3324b;
                    if (animator == null) {
                        arrayList18.add(c0211l);
                    } else {
                        S0 s018 = c0211l.f3431a;
                        K k9 = s018.f3334c;
                        if (kotlin.jvm.internal.h.a(linkedHashMap.get(s018), Boolean.TRUE)) {
                            if (AbstractC0220p0.H(2)) {
                                Log.v(str3, "Ignoring Animator set on " + k9 + " as this Fragment was involved in a Transition.");
                            }
                            c0211l.a();
                        } else {
                            SpecialEffectsController$Operation$State specialEffectsController$Operation$State8 = specialEffectsController$Operation$State2;
                            boolean z13 = s018.f3332a == specialEffectsController$Operation$State8 ? true : z5;
                            if (z13) {
                                ((ArrayList) list2).remove(s018);
                            }
                            View view19 = k9.mView;
                            viewGroup.startViewTransition(view19);
                            boolean z14 = z13;
                            Iterator it20 = it19;
                            animator.addListener(new C0217o(this, view19, z14, s018, c0211l));
                            animator.setTarget(view19);
                            animator.start();
                            if (AbstractC0220p0.H(2)) {
                                StringBuilder sb = new StringBuilder("Animator from operation ");
                                s07 = s018;
                                sb.append(s07);
                                sb.append(" has started.");
                                Log.v(str3, sb.toString());
                            } else {
                                s07 = s018;
                            }
                            c0211l.f3432b.b(new I.c() { // from class: androidx.fragment.app.j
                                @Override // I.c
                                public final void onCancel() {
                                    S0 operation = s07;
                                    kotlin.jvm.internal.h.e(operation, "$operation");
                                    animator.end();
                                    if (AbstractC0220p0.H(2)) {
                                        Log.v("FragmentManager", "Animator from operation " + operation + " has been canceled.");
                                    }
                                }
                            });
                            it19 = it20;
                            specialEffectsController$Operation$State2 = specialEffectsController$Operation$State8;
                            z12 = true;
                            z5 = false;
                        }
                    }
                }
            }
        }
        Iterator it21 = arrayList18.iterator();
        while (it21.hasNext()) {
            final C0211l c0211l2 = (C0211l) it21.next();
            final S0 s019 = c0211l2.f3431a;
            K k10 = s019.f3334c;
            if (containsValue) {
                if (AbstractC0220p0.H(2)) {
                    Log.v(str3, "Ignoring Animation set on " + k10 + " as Animations cannot run alongside Transitions.");
                }
                c0211l2.a();
            } else if (z12) {
                if (AbstractC0220p0.H(2)) {
                    Log.v(str3, "Ignoring Animation set on " + k10 + " as Animations cannot run alongside Animators.");
                }
                c0211l2.a();
            } else {
                final View view20 = k10.mView;
                kotlin.jvm.internal.h.d(context, "context");
                Q c6 = c0211l2.c(context);
                if (c6 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                Animation animation = c6.f3323a;
                if (animation == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                if (s019.f3332a != SpecialEffectsController$Operation$State.REMOVED) {
                    view20.startAnimation(animation);
                    c0211l2.a();
                    c0221q = this;
                } else {
                    viewGroup.startViewTransition(view20);
                    S s4 = new S(animation, viewGroup, view20);
                    c0221q = this;
                    s4.setAnimationListener(new animation.Animation$AnimationListenerC0219p(view20, c0211l2, c0221q, s019));
                    view20.startAnimation(s4);
                    if (AbstractC0220p0.H(2)) {
                        Log.v(str3, "Animation from operation " + s019 + " has started.");
                    }
                }
                c0211l2.f3432b.b(new I.c() { // from class: androidx.fragment.app.k
                    @Override // I.c
                    public final void onCancel() {
                        C0221q this$0 = c0221q;
                        kotlin.jvm.internal.h.e(this$0, "this$0");
                        C0211l animationInfo = c0211l2;
                        kotlin.jvm.internal.h.e(animationInfo, "$animationInfo");
                        S0 operation = s019;
                        kotlin.jvm.internal.h.e(operation, "$operation");
                        View view21 = view20;
                        view21.clearAnimation();
                        this$0.f3349a.endViewTransition(view21);
                        animationInfo.a();
                        if (AbstractC0220p0.H(2)) {
                            Log.v("FragmentManager", "Animation from operation " + operation + " has been cancelled.");
                        }
                    }
                });
            }
        }
        ArrayList arrayList19 = (ArrayList) list2;
        Iterator it22 = arrayList19.iterator();
        while (it22.hasNext()) {
            S0 s020 = (S0) it22.next();
            View view21 = s020.f3334c.mView;
            SpecialEffectsController$Operation$State specialEffectsController$Operation$State9 = s020.f3332a;
            kotlin.jvm.internal.h.d(view21, "view");
            specialEffectsController$Operation$State9.a(view21);
        }
        arrayList19.clear();
        if (AbstractC0220p0.H(2)) {
            Log.v(str3, "Completed executing operations from " + s04 + str2 + s03);
        }
    }
}
