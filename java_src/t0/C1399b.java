package t0;

import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: t0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1399b {
    public static C1398a a(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new C1398a(httpURLConnection);
    }
}
