.class final Lcom/google/android/gms/measurement/internal/zzgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgh;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Lcom/google/android/gms/measurement/internal/zzgh;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Lcom/google/android/gms/measurement/internal/zzgh;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zzw(Lcom/google/android/gms/measurement/internal/zzgh;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v2

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzH()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgc;->zzc:Lcom/google/android/gms/measurement/internal/zzgh;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zzw(Lcom/google/android/gms/measurement/internal/zzgh;)Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzl()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzg()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfp;->zzP()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzU:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_b

    :cond_0
    nop

    .line 11
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 12
    const-string v6, "_iapx"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 226
    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdi;->zzc()Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    goto/16 :goto_b

    .line 22
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    goto :goto_0

    .line 23
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdk;->zzaj()Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object v15

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(I)Lcom/google/android/gms/internal/measurement/zzdj;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 26
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 28
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 30
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzab(I)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 32
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzal(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb()Z

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 44
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_1

    .line 45
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 46
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzdj;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_1

    .line 47
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 48
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_1

    .line 38
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 39
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_1

    .line 40
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 41
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 44
    :cond_c
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzhw;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 49
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzki;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzdj;->zzR(J)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzhw;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzF()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzw(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzaw:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 53
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 58
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 59
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 60
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_2

    .line 55
    :cond_d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    .line 56
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 57
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 61
    :cond_e
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzaw:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 61
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 63
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 64
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 65
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzaw:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 66
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()Lcom/google/android/gms/measurement/internal/zzjg;

    move-result-object v8

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzjg;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)Landroid/util/Pair;

    move-result-object v8

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    .line 70
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_11

    .line 71
    :try_start_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 72
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 3
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzhw;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzdj;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_11

    .line 76
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzN(Z)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_3

    .line 223
    :catch_0
    move-exception v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    goto/16 :goto_0

    .line 76
    :cond_11
    :goto_3
    :try_start_5
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 77
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgj;->zzv()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 79
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgj;->zzv()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 81
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzE(I)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 83
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzdj;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Z

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 86
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzaw:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 87
    invoke-virtual {v8, v14, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 89
    :cond_12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 91
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzhw;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    :cond_13
    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 97
    :cond_14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    .line 99
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v11, "_lte"

    .line 101
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_4

    .line 163
    :cond_16
    move-object v10, v14

    .line 101
    :goto_4
    const-wide/16 v23, 0x0

    if-eqz v10, :cond_17

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    if-nez v9, :cond_18

    :cond_17
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v18, "auto"

    const-string v19, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 102
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfp;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    .line 103
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    .line 104
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 105
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    .line 107
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzkn;)Z

    :cond_18
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 108
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 109
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 111
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfp;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzf()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_1b

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 116
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v12

    .line 117
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzfg;->zzf(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 118
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v12

    .line 119
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 120
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 121
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    const-string v14, "_npa"

    .line 122
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzkn;

    .line 123
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 124
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 123
    :cond_19
    const/4 v5, 0x0

    goto :goto_5

    .line 124
    :cond_1a
    :goto_6
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v18, "auto"

    const-string v19, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 125
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfp;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 126
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    .line 127
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 128
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzdv;

    const/4 v7, 0x0

    .line 130
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdv;->zzj()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v9

    .line 132
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzdu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdu;

    .line 133
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(J)Lcom/google/android/gms/internal/measurement/zzdu;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 134
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v10

    .line 135
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zzc(Lcom/google/android/gms/internal/measurement/zzdu;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhn;->zzaA()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzdv;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_7

    .line 137
    :cond_1c
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 138
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 139
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfp;->zzl()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 140
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v9

    .line 141
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzK(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 142
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 143
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfp;->zzl()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 144
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    .line 145
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v8

    .line 146
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    const-string v5, "_c"

    .line 147
    const-wide/16 v7, 0x1

    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 149
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 150
    const-wide/16 v7, 0x1

    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 151
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 152
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zzl()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v5

    .line 153
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzdj;->zzG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zzl()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v5

    .line 155
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 156
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zzl()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v5

    .line 157
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 159
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzao;

    .line 160
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v16

    move-object/from16 v27, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 161
    move-object/from16 v26, v4

    move-object v4, v0

    move-object/from16 v28, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    const/16 v25, 0x0

    move-wide/from16 v13, v21

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v23

    goto :goto_8

    .line 201
    :cond_1e
    move-object/from16 v26, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move-object/from16 v27, v15

    const/16 v25, 0x0

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 162
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 163
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zza(J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    move-wide v11, v4

    .line 161
    :goto_8
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzhw;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 166
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v4, v14

    move-object/from16 v7, v28

    move-object/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdc;->zzk()Lcom/google/android/gms/internal/measurement/zzdb;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 168
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdb;->zzo(J)Lcom/google/android/gms/internal/measurement/zzdb;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzdb;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdb;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zze:J

    .line 170
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdb;->zzq(J)Lcom/google/android/gms/internal/measurement/zzdb;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzap;

    .line 171
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 172
    :cond_1f
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 173
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdg;->zzn()Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 175
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 176
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v8

    .line 177
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzkk;->zzd(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzdb;->zzg(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzdb;

    goto :goto_9

    .line 179
    :cond_20
    move-object/from16 v5, v27

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzf(Lcom/google/android/gms/internal/measurement/zzdb;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdp;->zza()Lcom/google/android/gms/internal/measurement/zzdl;

    move-result-object v6

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    .line 182
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzdd;->zzb(J)Lcom/google/android/gms/internal/measurement/zzdd;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 183
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzdd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdd;

    .line 184
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzdl;->zza(Lcom/google/android/gms/internal/measurement/zzdd;)Lcom/google/android/gms/internal/measurement/zzdl;

    .line 185
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzdj;->zzaj(Lcom/google/android/gms/internal/measurement/zzdl;)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzk()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 187
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 189
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzj()Ljava/util/List;

    move-result-object v9

    .line 190
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzn()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 191
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzn()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 192
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdj;->zzY(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 194
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzm()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzn()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzt(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 196
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdb;->zzn()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzv(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 197
    :cond_21
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v3

    cmp-long v0, v3, v23

    if-eqz v0, :cond_22

    .line 198
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzy(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 199
    :cond_22
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v6

    cmp-long v8, v6, v23

    if-eqz v8, :cond_23

    .line 200
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzdj;->zzw(J)Lcom/google/android/gms/internal/measurement/zzdj;

    goto :goto_a

    .line 217
    :cond_23
    if-eqz v0, :cond_24

    .line 201
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzw(J)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 202
    :cond_24
    :goto_a
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzg;->zzN()V

    .line 203
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzg;->zzI()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdj;->zzS(I)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v3, 0x9899

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzK(J)Lcom/google/android/gms/internal/measurement/zzdj;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfp;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzdj;->zzr(J)Lcom/google/android/gms/internal/measurement/zzdj;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzdj;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 209
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzdh;->zzb(Lcom/google/android/gms/internal/measurement/zzdj;)Lcom/google/android/gms/internal/measurement/zzdh;

    .line 210
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzs()J

    move-result-wide v3

    move-object/from16 v6, v26

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 211
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzdj;->zzu()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    :try_start_8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 216
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzm()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhn;->zzaA()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzbp()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zzs([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    .line 21
    :catch_1
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 220
    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v25

    goto :goto_b

    .line 21
    :catch_2
    move-exception v0

    :try_start_9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfp;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v14, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    goto/16 :goto_0

    .line 10
    :goto_b
    return-object v14

    .line 41
    :catchall_0
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjy;->zzf:Lcom/google/android/gms/measurement/internal/zzki;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzi()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 223
    throw v0
.end method
