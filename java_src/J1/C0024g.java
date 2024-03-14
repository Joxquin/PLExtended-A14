package J1;

import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.List;
/* renamed from: J1.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0024g {

    /* renamed from: a  reason: collision with root package name */
    public List f733a;

    /* renamed from: b  reason: collision with root package name */
    public String f734b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f735c;

    /* renamed from: d  reason: collision with root package name */
    public int f736d;

    /* renamed from: e  reason: collision with root package name */
    public String f737e;

    /* renamed from: f  reason: collision with root package name */
    public SuggestParcelables$InteractionType f738f;

    /* renamed from: g  reason: collision with root package name */
    public int f739g;

    public C0024g() {
    }

    public C0024g(Bundle bundle) {
        if (bundle.containsKey("rectIndices")) {
            this.f733a = bundle.getIntegerArrayList("rectIndices");
        }
        if (bundle.containsKey("id")) {
            this.f734b = bundle.getString("id");
        }
        if (bundle.containsKey("isSmartSelection")) {
            this.f735c = bundle.getBoolean("isSmartSelection");
        }
        if (bundle.containsKey("suggestedPresentationMode")) {
            this.f736d = bundle.getInt("suggestedPresentationMode");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f737e = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("interactionType")) {
            Bundle bundle2 = bundle.getBundle("interactionType");
            if (bundle2 == null) {
                this.f738f = null;
            } else {
                this.f738f = SuggestParcelables$InteractionType.a(bundle2);
            }
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.f739g = bundle.getInt("contentGroupIndex");
        }
    }
}
