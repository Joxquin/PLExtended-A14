.class public final LY1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:LY1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LY1/q;

    invoke-direct {v0}, LY1/q;-><init>()V

    sput-object v0, LY1/q;->a:LY1/q;

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
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
