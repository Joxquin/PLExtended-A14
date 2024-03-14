.class public final Lv3/d;
.super Lv3/g;
.source "SourceFile"


# static fields
.field public static final g:Lv3/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/d;

    invoke-direct {v0}, Lv3/d;-><init>()V

    sput-object v0, Lv3/d;->g:Lv3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Lv3/m;->c:I

    sget v2, Lv3/m;->d:I

    sget-wide v3, Lv3/m;->e:J

    sget-object v5, Lv3/m;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv3/g;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
