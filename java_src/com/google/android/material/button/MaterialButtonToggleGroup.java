package com.google.android.material.button;

import C2.a;
import C2.h;
import C2.i;
import C2.m;
import C2.n;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import i2.C0980a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import o2.C1330d;
import o2.C1331e;
import o2.C1332f;
import o2.C1333g;
import o2.C1335i;
import o2.InterfaceC1334h;
import s2.C1394a;
import x2.C1480r;
import x2.C1485w;
/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f7819n = 0;

    /* renamed from: d  reason: collision with root package name */
    public final List f7820d;

    /* renamed from: e  reason: collision with root package name */
    public final C1335i f7821e;

    /* renamed from: f  reason: collision with root package name */
    public final LinkedHashSet f7822f;

    /* renamed from: g  reason: collision with root package name */
    public final C1331e f7823g;

    /* renamed from: h  reason: collision with root package name */
    public Integer[] f7824h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7825i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f7826j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f7827k;

    /* renamed from: l  reason: collision with root package name */
    public final int f7828l;

    /* renamed from: m  reason: collision with root package name */
    public Set f7829m;

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    public final void a() {
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                i4 = -1;
                break;
            } else if (d(i4)) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 == -1) {
            return;
        }
        for (int i5 = i4 + 1; i5 < getChildCount(); i5++) {
            MaterialButton c4 = c(i5);
            MaterialButton c5 = c(i5 - 1);
            int min = Math.min(c4.c() ? c4.f7806g.f11856g : 0, c5.c() ? c5.f7806g.f11856g : 0);
            ViewGroup.LayoutParams layoutParams = c4.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-min);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -min;
                layoutParams2.setMarginStart(0);
            }
            c4.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || i4 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) c(i4).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
            return;
        }
        layoutParams3.setMarginEnd(0);
        layoutParams3.setMarginStart(0);
        layoutParams3.leftMargin = 0;
        layoutParams3.rightMargin = 0;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MaterialButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i4, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            WeakHashMap weakHashMap = J.f3079a;
            materialButton.setId(C0187y.a());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        if (materialButton.c()) {
            materialButton.f7806g.f11864o = true;
        }
        materialButton.f7808i = this.f7821e;
        if (materialButton.c()) {
            C1330d c1330d = materialButton.f7806g;
            c1330d.f11862m = true;
            i b4 = c1330d.b(false);
            i b5 = c1330d.b(true);
            if (b4 != null) {
                ColorStateList colorStateList = c1330d.f11859j;
                b4.f160d.f147k = c1330d.f11856g;
                b4.invalidateSelf();
                h hVar = b4.f160d;
                if (hVar.f140d != colorStateList) {
                    hVar.f140d = colorStateList;
                    b4.onStateChange(b4.getState());
                }
                if (b5 != null) {
                    float f4 = c1330d.f11856g;
                    int b6 = c1330d.f11862m ? C1394a.b(c1330d.f11850a, R.attr.colorSurface) : 0;
                    b5.f160d.f147k = f4;
                    b5.invalidateSelf();
                    ColorStateList valueOf = ColorStateList.valueOf(b6);
                    h hVar2 = b5.f160d;
                    if (hVar2.f140d != valueOf) {
                        hVar2.f140d = valueOf;
                        b5.onStateChange(b5.getState());
                    }
                }
            }
        }
        b(materialButton.getId(), materialButton.isChecked());
        if (!materialButton.c()) {
            throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        }
        n nVar = materialButton.f7806g.f11851b;
        ((ArrayList) this.f7820d).add(new C1333g(nVar.f201e, nVar.f204h, nVar.f202f, nVar.f203g));
        J.h(materialButton, new C1332f(this));
    }

    public final void b(int i4, boolean z4) {
        if (i4 == -1) {
            Log.e("MaterialButtonToggleGroup", "Button ID is not valid: " + i4);
            return;
        }
        HashSet hashSet = new HashSet(this.f7829m);
        if (z4 && !hashSet.contains(Integer.valueOf(i4))) {
            if (this.f7826j && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i4));
        } else if (z4 || !hashSet.contains(Integer.valueOf(i4))) {
            return;
        } else {
            if (!this.f7827k || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i4));
            }
        }
        e(hashSet);
    }

    public final MaterialButton c(int i4) {
        return (MaterialButton) getChildAt(i4);
    }

    public final boolean d(int i4) {
        return getChildAt(i4).getVisibility() != 8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f7823g);
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            treeMap.put(c(i4), Integer.valueOf(i4));
        }
        this.f7824h = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e(Set set) {
        Set set2 = this.f7829m;
        this.f7829m = new HashSet(set);
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            int id = c(i4).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.f7825i = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.f7825i = false;
            }
            if (((HashSet) set2).contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean contains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.f7822f.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1334h) it.next()).a(id, contains2);
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i4, int i5) {
        Integer[] numArr = this.f7824h;
        if (numArr == null || i5 >= numArr.length) {
            Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
            return i5;
        }
        return numArr[i5].intValue();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i4 = this.f7828l;
        if (i4 != -1) {
            e(Collections.singleton(Integer.valueOf(i4)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            if ((getChildAt(i5) instanceof MaterialButton) && d(i5)) {
                i4++;
            }
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, i4, false, this.f7826j ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        updateChildShapes();
        a();
        super.onMeasure(i4, i5);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).f7808i = null;
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            ((ArrayList) this.f7820d).remove(indexOfChild);
        }
        updateChildShapes();
        a();
    }

    public void updateChildShapes() {
        int i4;
        C1333g c1333g;
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            i4 = -1;
            if (i5 >= childCount2) {
                i5 = -1;
                break;
            } else if (d(i5)) {
                break;
            } else {
                i5++;
            }
        }
        int childCount3 = getChildCount() - 1;
        while (true) {
            if (childCount3 < 0) {
                break;
            } else if (d(childCount3)) {
                i4 = childCount3;
                break;
            } else {
                childCount3--;
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            MaterialButton c4 = c(i6);
            if (c4.getVisibility() != 8) {
                if (!c4.c()) {
                    throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
                }
                n nVar = c4.f7806g.f11851b;
                nVar.getClass();
                m mVar = new m(nVar);
                C1333g c1333g2 = (C1333g) ((ArrayList) this.f7820d).get(i6);
                if (i5 != i4) {
                    boolean z4 = getOrientation() == 0;
                    a aVar = C1333g.f11870e;
                    if (i6 == i5) {
                        c1333g = z4 ? C1485w.a(this) ? new C1333g(aVar, aVar, c1333g2.f11872b, c1333g2.f11873c) : new C1333g(c1333g2.f11871a, c1333g2.f11874d, aVar, aVar) : new C1333g(c1333g2.f11871a, aVar, c1333g2.f11872b, aVar);
                    } else if (i6 == i4) {
                        c1333g = z4 ? C1485w.a(this) ? new C1333g(c1333g2.f11871a, c1333g2.f11874d, aVar, aVar) : new C1333g(aVar, aVar, c1333g2.f11872b, c1333g2.f11873c) : new C1333g(aVar, c1333g2.f11874d, aVar, c1333g2.f11873c);
                    } else {
                        c1333g2 = null;
                    }
                    c1333g2 = c1333g;
                }
                if (c1333g2 == null) {
                    mVar.f189e = new a(0.0f);
                    mVar.f190f = new a(0.0f);
                    mVar.f191g = new a(0.0f);
                    mVar.f192h = new a(0.0f);
                } else {
                    mVar.f189e = c1333g2.f11871a;
                    mVar.f192h = c1333g2.f11874d;
                    mVar.f190f = c1333g2.f11872b;
                    mVar.f191g = c1333g2.f11873c;
                }
                c4.b(new n(mVar));
            }
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i4) {
        super(H2.a.a(context, attributeSet, i4, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, i4);
        this.f7820d = new ArrayList();
        this.f7821e = new C1335i(this);
        this.f7822f = new LinkedHashSet();
        this.f7823g = new C1331e(this);
        this.f7825i = false;
        this.f7829m = new HashSet();
        TypedArray d4 = C1480r.d(getContext(), attributeSet, C0980a.f9638n, i4, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        boolean z4 = d4.getBoolean(2, false);
        if (this.f7826j != z4) {
            this.f7826j = z4;
            e(new HashSet());
        }
        this.f7828l = d4.getResourceId(0, -1);
        this.f7827k = d4.getBoolean(1, false);
        setChildrenDrawingOrderEnabled(true);
        d4.recycle();
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.o(this, 1);
    }
}
