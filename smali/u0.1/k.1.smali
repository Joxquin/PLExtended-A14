.class public final Lu0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lv0/a;

.field public static final g:Lv0/a;


# instance fields
.field public a:Lq0/a;

.field public b:Lq0/b;

.field public c:Lq0/b;

.field public d:Lq0/b;

.field public e:Lq0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/k;->f:Lv0/a;

    const-string v0, "nm"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/k;->g:Lv0/a;

    return-void
.end method
