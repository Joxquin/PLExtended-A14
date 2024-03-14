package com.android.launcher3.model;

import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.PackageUserKey;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class U implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4771a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4772b;

    public /* synthetic */ U(int i4, Object obj) {
        this.f4771a = i4;
        this.f4772b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4771a) {
            case 0:
                IntArray intArray = (IntArray) this.f4772b;
                Objects.requireNonNull(intArray);
                ((Set) obj).forEach(new U(1, intArray));
                return;
            case 1:
                ((IntArray) this.f4772b).add(((Integer) obj).intValue());
                return;
            default:
                ((HashSet) this.f4772b).add(((PackageUserKey) obj).mPackageName);
                return;
        }
    }
}
