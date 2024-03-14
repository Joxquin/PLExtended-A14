package com.google.protobuf;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum e uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class JavaType {

    /* renamed from: d  reason: collision with root package name */
    public static final JavaType f8541d;

    /* renamed from: e  reason: collision with root package name */
    public static final JavaType f8542e;

    /* renamed from: f  reason: collision with root package name */
    public static final JavaType f8543f;

    /* renamed from: g  reason: collision with root package name */
    public static final JavaType f8544g;

    /* renamed from: h  reason: collision with root package name */
    public static final JavaType f8545h;

    /* renamed from: i  reason: collision with root package name */
    public static final JavaType f8546i;

    /* renamed from: j  reason: collision with root package name */
    public static final JavaType f8547j;

    /* renamed from: k  reason: collision with root package name */
    public static final JavaType f8548k;

    /* renamed from: l  reason: collision with root package name */
    public static final JavaType f8549l;

    /* renamed from: m  reason: collision with root package name */
    public static final JavaType f8550m;

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ JavaType[] f8551n;
    private final Class boxedType;
    private final Object defaultDefault;
    private final Class type;

    static {
        JavaType javaType = new JavaType("VOID", 0, Void.class, Void.class, null);
        f8541d = javaType;
        Class cls = Integer.TYPE;
        JavaType javaType2 = new JavaType("INT", 1, cls, Integer.class, 0);
        f8542e = javaType2;
        JavaType javaType3 = new JavaType("LONG", 2, Long.TYPE, Long.class, 0L);
        f8543f = javaType3;
        JavaType javaType4 = new JavaType("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f8544g = javaType4;
        JavaType javaType5 = new JavaType("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f8545h = javaType5;
        JavaType javaType6 = new JavaType("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f8546i = javaType6;
        JavaType javaType7 = new JavaType("STRING", 6, String.class, String.class, "");
        f8547j = javaType7;
        JavaType javaType8 = new JavaType("BYTE_STRING", 7, ByteString.class, ByteString.class, ByteString.f8505d);
        f8548k = javaType8;
        JavaType javaType9 = new JavaType("ENUM", 8, cls, Integer.class, null);
        f8549l = javaType9;
        JavaType javaType10 = new JavaType("MESSAGE", 9, Object.class, Object.class, null);
        f8550m = javaType10;
        f8551n = new JavaType[]{javaType, javaType2, javaType3, javaType4, javaType5, javaType6, javaType7, javaType8, javaType9, javaType10};
    }

    public JavaType(String str, int i4, Class cls, Class cls2, Object obj) {
        this.type = cls;
        this.boxedType = cls2;
        this.defaultDefault = obj;
    }

    public static JavaType valueOf(String str) {
        return (JavaType) Enum.valueOf(JavaType.class, str);
    }

    public static JavaType[] values() {
        return (JavaType[]) f8551n.clone();
    }

    public final Class a() {
        return this.boxedType;
    }
}
