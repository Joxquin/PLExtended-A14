package io.grpc.internal;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class N0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f9956a = Logger.getLogger(N0.class.getName());

    public static Object a(String str) {
        Logger logger = f9956a;
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            return e(jsonReader);
        } finally {
            try {
                jsonReader.close();
            } catch (IOException e4) {
                logger.log(Level.WARNING, "Failed to close", (Throwable) e4);
            }
        }
    }

    public static List b(JsonReader jsonReader) {
        jsonReader.beginArray();
        ArrayList arrayList = new ArrayList();
        while (jsonReader.hasNext()) {
            arrayList.add(e(jsonReader));
        }
        boolean z4 = jsonReader.peek() == JsonToken.END_ARRAY;
        O2.m.k("Bad token: " + jsonReader.getPath(), z4);
        jsonReader.endArray();
        return Collections.unmodifiableList(arrayList);
    }

    public static void c(JsonReader jsonReader) {
        jsonReader.nextNull();
    }

    public static Map d(JsonReader jsonReader) {
        jsonReader.beginObject();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (jsonReader.hasNext()) {
            linkedHashMap.put(jsonReader.nextName(), e(jsonReader));
        }
        boolean z4 = jsonReader.peek() == JsonToken.END_OBJECT;
        O2.m.k("Bad token: " + jsonReader.getPath(), z4);
        jsonReader.endObject();
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public static Object e(JsonReader jsonReader) {
        O2.m.k("unexpected end of JSON", jsonReader.hasNext());
        switch (M0.f9944a[jsonReader.peek().ordinal()]) {
            case 1:
                return b(jsonReader);
            case 2:
                return d(jsonReader);
            case 3:
                return jsonReader.nextString();
            case 4:
                return Double.valueOf(jsonReader.nextDouble());
            case 5:
                return Boolean.valueOf(jsonReader.nextBoolean());
            case 6:
                c(jsonReader);
                return null;
            default:
                throw new IllegalStateException("Bad token: " + jsonReader.getPath());
        }
    }
}
