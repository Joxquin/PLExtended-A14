package com.android.launcher3.util;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.pm.UserCache;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;
/* loaded from: classes.dex */
public final class PersistedItemArray {
    private final String mFileName;

    /* loaded from: classes.dex */
    public interface ItemFactory {
        ItemInfo createInfo(int i4, UserHandle userHandle, Intent intent);
    }

    public PersistedItemArray(String str) {
        this.mFileName = str.concat(".xml");
    }

    public final AtomicFile getFile(Context context) {
        return new AtomicFile(context.getFileStreamPath(this.mFileName));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0024 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List read(android.content.Context r8, com.android.launcher3.util.PersistedItemArray.ItemFactory r9, java.util.function.LongFunction r10) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.util.AtomicFile r8 = r7.getFile(r8)     // Catch: java.lang.Throwable -> L8a java.io.FileNotFoundException -> La5
            java.io.FileInputStream r8 = r8.openRead()     // Catch: java.lang.Throwable -> L8a java.io.FileNotFoundException -> La5
            org.xmlpull.v1.XmlPullParser r1 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L7e
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L7e
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L7e
            r2.<init>(r8, r3)     // Catch: java.lang.Throwable -> L7e
            r1.setInput(r2)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = "items"
            com.android.launcher3.AutoInstallsLayout.beginDocument(r1, r2)     // Catch: java.lang.Throwable -> L7e
            int r2 = r1.getDepth()     // Catch: java.lang.Throwable -> L7e
        L24:
            int r3 = r1.next()     // Catch: java.lang.Throwable -> L7e
            r4 = 3
            if (r3 != r4) goto L31
            int r4 = r1.getDepth()     // Catch: java.lang.Throwable -> L7e
            if (r4 <= r2) goto L78
        L31:
            r4 = 1
            if (r3 == r4) goto L78
            r4 = 2
            if (r3 != r4) goto L24
            java.lang.String r3 = "entry"
            java.lang.String r4 = r1.getName()     // Catch: java.lang.Throwable -> L7e
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L7e
            if (r3 != 0) goto L44
            goto L24
        L44:
            java.lang.String r3 = "itemType"
            r4 = 0
            java.lang.String r3 = r1.getAttributeValue(r4, r3)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            java.lang.String r5 = "profileId"
            java.lang.String r5 = r1.getAttributeValue(r4, r5)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            java.lang.Object r5 = r10.apply(r5)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            android.os.UserHandle r5 = (android.os.UserHandle) r5     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            java.lang.String r6 = "intent"
            java.lang.String r4 = r1.getAttributeValue(r4, r6)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            r6 = 0
            android.content.Intent r4 = android.content.Intent.parseUri(r4, r6)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            if (r5 == 0) goto L24
            if (r4 == 0) goto L24
            com.android.launcher3.model.data.ItemInfo r3 = r9.createInfo(r3, r5, r4)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            if (r3 == 0) goto L24
            r0.add(r3)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L7e
            goto L24
        L78:
            if (r8 == 0) goto La5
            r8.close()     // Catch: java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.io.FileNotFoundException -> La5
            goto La5
        L7e:
            r9 = move-exception
            if (r8 == 0) goto L89
            r8.close()     // Catch: java.lang.Throwable -> L85
            goto L89
        L85:
            r8 = move-exception
            r9.addSuppressed(r8)     // Catch: java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.io.FileNotFoundException -> La5
        L89:
            throw r9     // Catch: java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.io.FileNotFoundException -> La5
        L8a:
            r8 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "Unable to read items in "
            r9.<init>(r10)
            java.lang.String r7 = r7.mFileName
            r9.append(r7)
            java.lang.String r7 = r9.toString()
            java.lang.String r9 = "PersistedItemArray"
            android.util.Log.e(r9, r7, r8)
            java.util.List r7 = java.util.Collections.emptyList()
            return r7
        La5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.PersistedItemArray.read(android.content.Context, com.android.launcher3.util.PersistedItemArray$ItemFactory, java.util.function.LongFunction):java.util.List");
    }

    public final void write(Context context, List list) {
        String str = this.mFileName;
        AtomicFile file = getFile(context);
        try {
            FileOutputStream startWrite = file.startWrite();
            UserCache userCache = (UserCache) UserCache.INSTANCE.get(context);
            try {
                XmlSerializer newSerializer = Xml.newSerializer();
                newSerializer.setOutput(startWrite, StandardCharsets.UTF_8.name());
                newSerializer.startDocument(null, Boolean.TRUE);
                newSerializer.startTag(null, "items");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ItemInfo itemInfo = (ItemInfo) it.next();
                    Intent intent = itemInfo.getIntent();
                    if (intent != null) {
                        newSerializer.startTag(null, "entry");
                        newSerializer.attribute(null, "itemType", Integer.toString(itemInfo.itemType));
                        newSerializer.attribute(null, "profileId", Long.toString(userCache.getSerialNumberForUser(itemInfo.user)));
                        newSerializer.attribute(null, "intent", intent.toUri(0));
                        newSerializer.endTag(null, "entry");
                    }
                }
                newSerializer.endTag(null, "items");
                newSerializer.endDocument();
                file.finishWrite(startWrite);
            } catch (IOException e4) {
                file.failWrite(startWrite);
                Log.e("PersistedItemArray", "Unable to persist items in " + str, e4);
            }
        } catch (IOException e5) {
            Log.e("PersistedItemArray", "Unable to persist items in " + str, e5);
        }
    }
}
