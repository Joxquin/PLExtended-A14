package W1;

import android.app.appsearch.GlobalSearchSession;
import android.content.Context;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1889a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f1890b;

    public /* synthetic */ d(AssistStateManagerGoogle assistStateManagerGoogle, Context context) {
        this.f1889a = assistStateManagerGoogle;
        this.f1890b = context;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        AssistStateManagerGoogle assistStateManagerGoogle = this.f1889a;
        ((GlobalSearchSession) obj).getByDocumentId("com.google.android.googlequicksearchbox", "OmniEntryPoint", assistStateManagerGoogle.f7510e, new e(2), new h(assistStateManagerGoogle, this.f1890b));
    }
}
