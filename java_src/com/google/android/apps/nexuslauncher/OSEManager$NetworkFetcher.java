package com.google.android.apps.nexuslauncher;

import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes.dex */
public final class OSEManager$NetworkFetcher {
    public static byte[] a(String str) {
        URLConnection openConnection = new URL(str).openConnection();
        kotlin.jvm.internal.h.c(openConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
        try {
            httpsURLConnection.setUseCaches(true);
            httpsURLConnection.setInstanceFollowRedirects(false);
            httpsURLConnection.addRequestProperty("Cache-Control", "max-stale=60");
            int responseCode = httpsURLConnection.getResponseCode();
            if (responseCode == 200) {
                byte[] readAllBytes = httpsURLConnection.getInputStream().readAllBytes();
                kotlin.jvm.internal.h.d(readAllBytes, "{\n                    co…Bytes()\n                }");
                return readAllBytes;
            }
            throw new Exception("The responses code is not 200 but " + responseCode);
        } finally {
            httpsURLConnection.disconnect();
        }
    }
}
