.class public final LY1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:LY1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LY1/p;

    invoke-direct {v0}, LY1/p;-><init>()V

    sput-object v0, LY1/p;->a:LY1/p;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
