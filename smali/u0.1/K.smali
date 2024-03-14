.class public final Lu0/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "s"

    const-string v1, "e"

    const-string v2, "o"

    const-string v3, "nm"

    const-string v4, "m"

    const-string v5, "hd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/K;->a:Lv0/a;

    return-void
.end method
