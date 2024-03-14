.class public final LZ1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:LZ1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LZ1/c;

    invoke-direct {v0}, LZ1/c;-><init>()V

    sput-object v0, LZ1/c;->a:LZ1/c;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->a(I)Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
