.class public final Lu0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;

.field public static final b:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "ch"

    const-string v1, "size"

    const-string v2, "w"

    const-string v3, "style"

    const-string v4, "fFamily"

    const-string v5, "data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/m;->a:Lv0/a;

    const-string v0, "shapes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/m;->b:Lv0/a;

    return-void
.end method
