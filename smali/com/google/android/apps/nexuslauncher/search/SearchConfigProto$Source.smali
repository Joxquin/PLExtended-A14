.class public final enum Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

.field public static final enum e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

.field public static final enum f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

.field public static final enum g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

.field public static final synthetic h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->d:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    const-string v2, "HOMESCREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->e:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    const-string v3, "ALL_APPS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->f:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    const-string v4, "SHELF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->g:Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->h:[Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchConfigProto$Source;->value:I

    return p0
.end method
