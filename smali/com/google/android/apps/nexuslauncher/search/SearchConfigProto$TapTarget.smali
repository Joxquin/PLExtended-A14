.class public final enum Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

.field public static final enum e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

.field public static final enum f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

.field public static final enum g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

.field public static final synthetic h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    const-string v2, "LOGO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    const-string v3, "TEXTBOX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    const-string v4, "PASTE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$TapTarget;->value:I

    return p0
.end method
