.class public final Lu0/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "r"

    const-string v1, "hd"

    const-string v2, "nm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/D;->a:Lv0/a;

    return-void
.end method
