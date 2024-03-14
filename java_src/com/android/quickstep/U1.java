package com.android.quickstep;

import android.graphics.Region;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class U1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5530a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5531b;

    public /* synthetic */ U1(int i4, Object obj) {
        this.f5530a = i4;
        this.f5531b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5530a) {
            case 0:
                TouchInteractionService.TISBinder.t((Consumer) this.f5531b, (TouchInteractionService) obj);
                return;
            default:
                TouchInteractionService.TISBinder.z((Region) this.f5531b, (TouchInteractionService) obj);
                return;
        }
    }
}
