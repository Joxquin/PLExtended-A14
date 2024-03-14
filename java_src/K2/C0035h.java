package K2;

import android.content.ContentResolver;
import android.net.Uri;
import com.google.android.systemui.smartspace.BcSmartspaceCardDoorbell;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.function.Function;
/* renamed from: K2.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0035h implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f980a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BcSmartspaceCardDoorbell f981b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ContentResolver f982c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f983d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ float f984e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ WeakReference f985f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ WeakReference f986g;

    public /* synthetic */ C0035h(BcSmartspaceCardDoorbell bcSmartspaceCardDoorbell, ContentResolver contentResolver, int i4, float f4, WeakReference weakReference, WeakReference weakReference2, int i5) {
        this.f980a = i5;
        this.f981b = bcSmartspaceCardDoorbell;
        this.f982c = contentResolver;
        this.f983d = i4;
        this.f984e = f4;
        this.f985f = weakReference;
        this.f986g = weakReference2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f980a) {
            case 0:
                BcSmartspaceCardDoorbell bcSmartspaceCardDoorbell = this.f981b;
                ContentResolver contentResolver = this.f982c;
                int i4 = this.f983d;
                float f4 = this.f984e;
                WeakReference weakReference = this.f985f;
                WeakReference weakReference2 = this.f986g;
                return (C0038k) ((HashMap) bcSmartspaceCardDoorbell.f8295f).computeIfAbsent((Uri) obj, new C0035h(bcSmartspaceCardDoorbell, contentResolver, i4, f4, weakReference, weakReference2, 1));
            default:
                BcSmartspaceCardDoorbell bcSmartspaceCardDoorbell2 = this.f981b;
                ContentResolver contentResolver2 = this.f982c;
                int i5 = this.f983d;
                float f5 = this.f984e;
                WeakReference weakReference3 = this.f985f;
                WeakReference weakReference4 = this.f986g;
                int i6 = BcSmartspaceCardDoorbell.f8294m;
                bcSmartspaceCardDoorbell2.getClass();
                C0038k c0038k = new C0038k(f5, i5, contentResolver2, (Uri) obj, weakReference3, weakReference4);
                new AsyncTaskC0040m(bcSmartspaceCardDoorbell2.f8301l).execute(c0038k);
                return c0038k;
        }
    }
}
