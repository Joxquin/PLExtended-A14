package com.android.systemui.animation;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.systemui.animation.ViewHierarchyAnimator$Bound;
import com.android.systemui.shared.R;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.builders.ListBuilder;
/* loaded from: classes.dex */
public final class w implements View.OnLayoutChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ViewHierarchyAnimator$Hotspot f6150d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f6151e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Interpolator f6152f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ long f6153g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ boolean f6154h = true;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Runnable f6155i;

    public w(long j4, Interpolator interpolator, ViewHierarchyAnimator$Hotspot viewHierarchyAnimator$Hotspot, Runnable runnable, boolean z4) {
        this.f6150d = viewHierarchyAnimator$Hotspot;
        this.f6151e = z4;
        this.f6152f = interpolator;
        this.f6153g = j4;
        this.f6155i = runnable;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (view == null) {
            return;
        }
        z zVar = A.f6025a;
        ViewHierarchyAnimator$Bound.LEFT left = ViewHierarchyAnimator$Bound.f6030d;
        Integer a4 = z.a(view, left);
        int intValue = a4 != null ? a4.intValue() : i8;
        ViewHierarchyAnimator$Bound.TOP top = ViewHierarchyAnimator$Bound.f6031e;
        Integer a5 = z.a(view, top);
        int intValue2 = a5 != null ? a5.intValue() : i9;
        ViewHierarchyAnimator$Bound.RIGHT right = ViewHierarchyAnimator$Bound.f6032f;
        Integer a6 = z.a(view, right);
        int intValue3 = a6 != null ? a6.intValue() : i10;
        ViewHierarchyAnimator$Bound.BOTTOM bottom = ViewHierarchyAnimator$Bound.f6033g;
        Integer a7 = z.a(view, bottom);
        int intValue4 = a7 != null ? a7.intValue() : i11;
        Object tag = view.getTag(R.id.tag_animator);
        ObjectAnimator objectAnimator = tag instanceof ObjectAnimator ? (ObjectAnimator) tag : null;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int i16 = intValue;
        if (!((view.getVisibility() == 8 || i4 == i6 || i5 == i7) ? false : true)) {
            z.d(view, left, i4);
            z.d(view, top, i5);
            z.d(view, right, i6);
            z.d(view, bottom, i7);
            return;
        }
        ViewHierarchyAnimator$Hotspot viewHierarchyAnimator$Hotspot = this.f6150d;
        boolean z4 = this.f6151e;
        int i17 = z4 ? i4 : i16;
        if (z4) {
            intValue2 = i5;
        }
        if (z4) {
            intValue3 = i6;
        }
        if (z4) {
            intValue4 = i7;
        }
        if (viewHierarchyAnimator$Hotspot != null) {
            switch (viewHierarchyAnimator$Hotspot.ordinal()) {
                case 0:
                    i12 = (i4 + i6) / 2;
                    break;
                case 1:
                case 2:
                case 8:
                    i12 = Math.min(i17, i4);
                    break;
                case 3:
                case 7:
                    i12 = i4;
                    break;
                case 4:
                case 5:
                case 6:
                    i12 = Math.max(intValue3, i6);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            switch (viewHierarchyAnimator$Hotspot.ordinal()) {
                case 0:
                    i13 = (i5 + i7) / 2;
                    break;
                case 1:
                case 5:
                    i13 = i5;
                    break;
                case 2:
                case 3:
                case 4:
                    i13 = Math.min(intValue2, i5);
                    break;
                case 6:
                case 7:
                case 8:
                    i13 = Math.max(intValue4, i7);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            switch (viewHierarchyAnimator$Hotspot.ordinal()) {
                case 0:
                    i14 = (i4 + i6) / 2;
                    intValue3 = i14;
                    break;
                case 1:
                case 2:
                case 8:
                    i14 = Math.min(i17, i4);
                    intValue3 = i14;
                    break;
                case 3:
                case 7:
                    intValue3 = i6;
                    break;
                case 4:
                case 5:
                case 6:
                    i14 = Math.max(intValue3, i6);
                    intValue3 = i14;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            switch (viewHierarchyAnimator$Hotspot.ordinal()) {
                case 0:
                    i15 = (i5 + i7) / 2;
                    intValue4 = i15;
                    break;
                case 1:
                case 5:
                    intValue4 = i7;
                    break;
                case 2:
                case 3:
                case 4:
                    i15 = Math.min(intValue2, i5);
                    intValue4 = i15;
                    break;
                case 6:
                case 7:
                case 8:
                    i15 = Math.max(intValue4, i7);
                    intValue4 = i15;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            i17 = i12;
            intValue2 = i13;
        }
        Map e4 = kotlin.collections.x.e(new Pair(left, Integer.valueOf(i17)), new Pair(top, Integer.valueOf(intValue2)), new Pair(right, Integer.valueOf(intValue3)), new Pair(bottom, Integer.valueOf(intValue4)));
        Map e5 = kotlin.collections.x.e(new Pair(left, Integer.valueOf(i4)), new Pair(top, Integer.valueOf(i5)), new Pair(right, Integer.valueOf(i6)), new Pair(bottom, Integer.valueOf(i7)));
        LinkedHashSet<ViewHierarchyAnimator$Bound> linkedHashSet = new LinkedHashSet();
        if (((Number) kotlin.collections.x.d(e4, left)).intValue() != i4) {
            linkedHashSet.add(left);
        }
        if (((Number) kotlin.collections.x.d(e4, top)).intValue() != i5) {
            linkedHashSet.add(top);
        }
        if (((Number) kotlin.collections.x.d(e4, right)).intValue() != i6) {
            linkedHashSet.add(right);
        }
        if (((Number) kotlin.collections.x.d(e4, bottom)).intValue() != i7) {
            linkedHashSet.add(bottom);
        }
        if (!linkedHashSet.isEmpty()) {
            Interpolator interpolator = this.f6152f;
            long j4 = this.f6153g;
            boolean z5 = this.f6154h;
            Runnable runnable = this.f6155i;
            ListBuilder listBuilder = new ListBuilder();
            for (ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound : linkedHashSet) {
                listBuilder.add(PropertyValuesHolder.ofInt((Property) A.f6026b.get(viewHierarchyAnimator$Bound), ((Number) kotlin.collections.x.d(e4, viewHierarchyAnimator$Bound)).intValue(), ((Number) kotlin.collections.x.d(e5, viewHierarchyAnimator$Bound)).intValue()));
            }
            listBuilder.o();
            PropertyValuesHolder[] propertyValuesHolderArr = (PropertyValuesHolder[]) listBuilder.toArray(new PropertyValuesHolder[0]);
            Object tag2 = view.getTag(R.id.tag_animator);
            ObjectAnimator objectAnimator2 = tag2 instanceof ObjectAnimator ? (ObjectAnimator) tag2 : null;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
            }
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, (PropertyValuesHolder[]) Arrays.copyOf(propertyValuesHolderArr, propertyValuesHolderArr.length));
            ofPropertyValuesHolder.setInterpolator(interpolator);
            ofPropertyValuesHolder.setDuration(j4);
            ofPropertyValuesHolder.addListener(new y(view, linkedHashSet, z5, runnable));
            for (ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound2 : linkedHashSet) {
                z zVar2 = A.f6025a;
                z.d(view, viewHierarchyAnimator$Bound2, ((Number) kotlin.collections.x.d(e4, viewHierarchyAnimator$Bound2)).intValue());
            }
            view.setTag(R.id.tag_animator, ofPropertyValuesHolder);
            ofPropertyValuesHolder.start();
        }
    }
}
