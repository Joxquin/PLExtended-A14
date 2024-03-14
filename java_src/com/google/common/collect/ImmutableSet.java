package com.google.common.collect;

import O2.m;
import com.android.systemui.shared.system.QuickStepContract;
import j.C1080K;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class ImmutableSet extends ImmutableCollection implements Set {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f8434f = 0;

    /* renamed from: e  reason: collision with root package name */
    public transient ImmutableList f8435e;

    /* loaded from: classes.dex */
    class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            Object[] objArr = this.elements;
            int i4 = ImmutableSet.f8434f;
            int length = objArr.length;
            return length != 0 ? length != 1 ? ImmutableSet.p(objArr.length, (Object[]) objArr.clone()) : new SingletonImmutableSet(objArr[0]) : RegularImmutableSet.f8453m;
        }
    }

    public static int o(int i4) {
        int max = Math.max(i4, 2);
        if (max >= 751619276) {
            m.b("collection too large", max < 1073741824);
            return QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    public static ImmutableSet p(int i4, Object... objArr) {
        if (i4 != 0) {
            if (i4 == 1) {
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                return new SingletonImmutableSet(obj);
            }
            int o4 = o(i4);
            Object[] objArr2 = new Object[o4];
            int i5 = o4 - 1;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                Object obj2 = objArr[i8];
                if (obj2 == null) {
                    throw new NullPointerException(C1080K.a("at index ", i8));
                }
                int hashCode = obj2.hashCode();
                int a4 = b.a(hashCode);
                while (true) {
                    int i9 = a4 & i5;
                    Object obj3 = objArr2[i9];
                    if (obj3 == null) {
                        objArr[i7] = obj2;
                        objArr2[i9] = obj2;
                        i6 += hashCode;
                        i7++;
                        break;
                    } else if (obj3.equals(obj2)) {
                        break;
                    } else {
                        a4++;
                    }
                }
            }
            Arrays.fill(objArr, i7, i4, (Object) null);
            if (i7 == 1) {
                Object obj4 = objArr[0];
                Objects.requireNonNull(obj4);
                return new SingletonImmutableSet(obj4);
            } else if (o(i7) < o4 / 2) {
                return p(i7, objArr);
            } else {
                int length = objArr.length;
                if (i7 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i7);
                }
                return new RegularImmutableSet(i6, i5, i7, objArr, objArr2);
            }
        }
        return RegularImmutableSet.f8453m;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && (this instanceof RegularImmutableSet)) {
            ImmutableSet immutableSet = (ImmutableSet) obj;
            immutableSet.getClass();
            if ((immutableSet instanceof RegularImmutableSet) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return g.a(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public ImmutableList n() {
        ImmutableList immutableList = this.f8435e;
        if (immutableList == null) {
            ImmutableList q4 = q();
            this.f8435e = q4;
            return q4;
        }
        return immutableList;
    }

    public ImmutableList q() {
        Object[] array = toArray();
        c cVar = ImmutableList.f8428e;
        int length = array.length;
        return length == 0 ? RegularImmutableList.f8436h : new RegularImmutableList(length, array);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }
}
