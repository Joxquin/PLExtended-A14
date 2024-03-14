package J1;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public long f704a;

    /* renamed from: b  reason: collision with root package name */
    public long f705b;

    /* renamed from: c  reason: collision with root package name */
    public long f706c;

    /* renamed from: d  reason: collision with root package name */
    public long f707d;

    /* renamed from: e  reason: collision with root package name */
    public long f708e;

    public J(Bundle bundle) {
        if (bundle.containsKey("startTimestampMs")) {
            this.f704a = bundle.getLong("startTimestampMs");
        }
        if (bundle.containsKey("endTimestampMs")) {
            this.f705b = bundle.getLong("endTimestampMs");
        }
        if (bundle.containsKey("ocrMs")) {
            this.f706c = bundle.getLong("ocrMs");
        }
        if (bundle.containsKey("ocrDetectionMs")) {
            this.f707d = bundle.getLong("ocrDetectionMs");
        }
        if (bundle.containsKey("entityExtractionMs")) {
            this.f708e = bundle.getLong("entityExtractionMs");
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putLong("startTimestampMs", this.f704a);
        bundle.putLong("endTimestampMs", this.f705b);
        bundle.putLong("ocrMs", this.f706c);
        bundle.putLong("ocrDetectionMs", this.f707d);
        bundle.putLong("entityExtractionMs", this.f708e);
        return bundle;
    }
}
